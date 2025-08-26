# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2019-2025 Rother OSS GmbH, https://otobo.io/
# --
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# --

package Kernel::System::Ticket::Event::TimeAccountingTicketTimeUnitsSync;

use strict;
use warnings;

use Kernel::System::VariableCheck qw(:all);

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::CustomerUser',
    'Kernel::System::DynamicField',
    'Kernel::System::DynamicField::Backend',
    'Kernel::System::Log',
    'Kernel::System::Ticket',
    'Kernel::System::Ticket::Article',
    'Kernel::System::TimeAccounting',
    'Kernel::System::CustomerCompany',
);

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Data Event Config)) {
        if ( !$Param{$_} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $_!"
            );
            return;
        }
    }

    return if $Param{Event} ne 'TicketAccountTime';

    for (qw(TicketID ArticleID)) {
        if ( !$Param{Data}->{$_} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $_ in Data!"
            );
            return;
        }
    }

    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');

    # get task config
    my $SyncToPersonalTime  = $ConfigObject->Get('TimeAccounting::TicketSync::Enable');
    my $SyncToArticleDFName = $ConfigObject->Get('TimeAccounting::TicketSync::SaveTimeUnitToArticleField');

    # return if no task is configured
    return 1 if !$SyncToPersonalTime && !$SyncToArticleDFName;

    my $Success = 1;

    # sync personal time (only, if time units are not 0)
    if ( $SyncToPersonalTime && $Param{Data}{TimeUnits} ) {
        my $TicketObject         = $Kernel::OM->Get('Kernel::System::Ticket');
        my $ArticleObject        = $Kernel::OM->Get('Kernel::System::Ticket::Article');
        my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');

        my $ArticleBackendObject = $ArticleObject->BackendForArticle(
            TicketID  => $Param{Data}{TicketID},
            ArticleID => $Param{Data}{ArticleID},
        );

        # Get the added article with all required information
        my %Article = $ArticleBackendObject->ArticleGet(
            TicketID      => $Param{Data}{TicketID},
            ArticleID     => $Param{Data}{ArticleID},
            DynamicFields => 1,
        );

        # Add TimeUnits to the Article hash
        $Article{TimeUnits} = $Param{Data}{TimeUnits};

        # Now we split the date to year month day
        my $Year;
        my $Month;
        my $Day;
        if ( $Article{CreateTime} =~ /^(\d\d\d\d)\-(\d\d)\-(\d\d).*$/ ) {
            $Year  = $1;
            $Month = $2;
            $Day   = $3;
        }

        # Now I write the time unit to timeaccounting module
        # Get TimeAccouning project and action, which was set with TimeUnit
        my $ProjectID;
        my $ActionID;

        my $DefaultProjectID = $ConfigObject->Get('TimeAccounting::TicketSync::DefaultProjectID');
        my $DefaultActionID  = $ConfigObject->Get('TimeAccounting::TicketSync::DefaultActionID');

        # First of all, we check if the project (customer_id) already exists or need to create
        my %Ticket = $TicketObject->TicketGet(
            TicketID => $Param{Data}{TicketID},
            UserID   => 1,
        );

        my $ProjectName = $Self->_CheckProjectName(
            ProjectName => $Ticket{CustomerID} || '',
        );

        my %ProjectData = $TimeAccountingObject->ProjectGet( Project => $ProjectName );

        # We need to create the project if it not exist.
        if ( !IsHashRefWithData( \%ProjectData ) ) {
            $ProjectID = $Self->_CreateProject(
                ProjectName => $ProjectName,
                Year        => $Year,
                Month       => $Month,
                Day         => $Day,
            );
        }
        else {
            $ProjectID = $ProjectData{ID};
        }

        # Get the right TimeAccounting Action for the entry
        my $ServiceToActionHashRef = $ConfigObject->Get('TimeAccounting::TicketSync::ServiceToAction');

        if ( IsHashRefWithData($ServiceToActionHashRef) ) {

            ACTION:
            for my $Action ( keys %$ServiceToActionHashRef ) {
                my $ServiceArrayRef = $ServiceToActionHashRef->{$Action};

                SERVICE:
                for my $Service (@$ServiceArrayRef) {
                    next SERVICE if $Ticket{Service} !~ /$Service/i;

                    # Now wo have the right service and action. We need only the ID in the next step!
                    my %ActionData = $TimeAccountingObject->ActionGet( Action => $Action );
                    $ActionID = $ActionData{ID};
                    last ACTION;
                }
            }

            # No Action exists for this service, so we use the default action
            if ( !$ActionID ) {
                $ActionID = $DefaultActionID;
            }
        }
        else {
            $ActionID = $DefaultActionID;
        }

        if ( $Year && $Month && $Day && $Article{CreateBy} ) {

            my $TicketNumber = $TicketObject->TicketNumberLookup(
                TicketID => $Param{Data}{TicketID},
            );

            my $CurrentTimeObject = $Kernel::OM->Create('Kernel::System::DateTime');

            # the working unit may concern to some article edition later to the article creation
            # therefore it must be assigned the current date instead of the article creation date
            my $CurrentTimeValue = $CurrentTimeObject->Get();

            $Success = $TimeAccountingObject->WorkingUnitsInsert(
                Year         => $CurrentTimeValue->{Year},
                Month        => $CurrentTimeValue->{Month},
                Day          => $CurrentTimeValue->{Day},
                LeaveDay     => 0,
                Sick         => 0,
                Overtime     => 0,
                WorkingUnits => [
                    {
                        ProjectID  => $ProjectID,
                        ActionID   => $ActionID,
                        Remark     => 'Time: ' . $CurrentTimeObject->Format( Format => '%H:%M' ) . ' - ' . $Article{Subject},
                        TicketID   => $Param{Data}->{TicketID},
                        ArticleID  => $Param{Data}->{ArticleID},
                        Period     => $Article{TimeUnits} / 60,
                        BaseModule => 'Ticket',
                    },
                ],

                # use given user id instead of article creator user id to take ArticleEdit into account
                UserID         => $Param{UserID},
                ExternalInsert => 1,
            );

            if ( !$Success ) {
                $Kernel::OM->Get('Kernel::System::Log')->Log(
                    Priority => 'error',
                    Message  => "Could not insert working units (" . ( $Article{TimeUnits} / 60 )
                        . ") of article (ArticleID: $Param{Data}{ArticleID}, TicketID: $Param{Data}{TicketID}) for $Article{CreateBy}."
                );
            }
        }
        else {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Error in receiving parameters for working units insertion (" . ( $Article{TimeUnits} / 60 )
                    . ") of article (ArticleID: $Param{Data}{ArticleID}, TicketID: $Param{Data}{TicketID})."
            );

            $Success = 0;
        }
    }

    # sync article time to DF
    if ($SyncToArticleDFName) {
        my $DynamicFieldConfig = $Kernel::OM->Get('Kernel::System::DynamicField')->DynamicFieldGet(
            Name => $SyncToArticleDFName,
        );

        if ($DynamicFieldConfig) {
            my $DFSuccess = $Kernel::OM->Get('Kernel::System::DynamicField::Backend')->ValueSet(
                DynamicFieldConfig => $DynamicFieldConfig,
                ObjectID           => $Param{Data}{ArticleID},
                Value              => $Param{Data}{TimeUnits},
                UserID             => 1,
            );

            $Success = $Success ? $DFSuccess : $Success;
        }
        else {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "No dynamic field '$SyncToArticleDFName'!",
            );

            $Success = 0;
        }
    }

    return $Success;
}

sub _CheckProjectName {
    my ( $Self, %Param ) = @_;

    my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');
    my $ConfigObject         = $Kernel::OM->Get('Kernel::Config');

    my $DefaultProjectID = $ConfigObject->Get('TimeAccounting::TicketSync::DefaultProjectID');
    my %DefaultProject   = $TimeAccountingObject->ProjectGet( ID => $DefaultProjectID );
    my $DefaultName      = $DefaultProject{Project};

    # check needed stuff
    if ( !$Param{ProjectName} || $Param{ProjectName} eq '' ) {
        return $DefaultName;
    }

    # If this option is disabled, return. We do not create a project.
    if ( !$ConfigObject->Get('TimeAccounting::TicketSync::CreateProjectFromCustomerID') ) {
        return $DefaultName;
    }

    # Now we need to check if the customer company exists already exists inside the database
    my $CustomerCompanyObject = $Kernel::OM->Get('Kernel::System::CustomerCompany');

    # Check if a customer company already exists in the customer company database
    my %CustomerCompany = $CustomerCompanyObject->CustomerCompanyGet(
        CustomerID => $Param{ProjectName},
    );

    # Return regular project cause customercompany exists
    if ( IsHashRefWithData( \%CustomerCompany ) ) {
        my %ProjectData = $TimeAccountingObject->ProjectGet( Project => $Param{ProjectName} );

        if ( IsHashRefWithData( \%ProjectData ) ) {
            return $ProjectData{Project};
        }
        return $Param{ProjectName};
    }

    # Customer company not exist, so we need to check if we create projects from tmp customers.
    if ( !$ConfigObject->Get('TimeAccounting::TicketSync::CreateProjectFromTMPCustomerID') ) {
        return $DefaultName;
    }

    # Now we now that we need to create the project if it not exist
    my ( $User, $Domain ) = split( /@/, $Param{ProjectName} );
    my %ProjectData = $TimeAccountingObject->ProjectGet( Project => $Domain );

    if ( IsHashRefWithData( \%ProjectData ) ) {
        return $ProjectData{Project};
    }
    else {

        return $Domain;
    }
    return $DefaultName;
}

sub _CreateProject {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ProjectName} && !$Param{Year} && !$Param{Month} && !$Param{Day} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need Name!',
        );
        return;
    }

    my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');

    my $ProjectID = $TimeAccountingObject->ProjectSettingsInsert(
        Project            => $Param{ProjectName},
        ProjectDescription => "Create Time: $Param{Year}-$Param{Month}-$Param{Day}",
        ProjectStatus      => 1,
    );

    if ($ProjectID) {
        return $ProjectID;
    }
}

1;
