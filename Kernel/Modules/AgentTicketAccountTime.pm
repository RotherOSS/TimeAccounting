# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
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

package Kernel::Modules::AgentTicketAccountTime;

use strict;
use warnings;

use Mail::Address;

use Kernel::System::VariableCheck qw(:all);
use Kernel::Language qw(Translatable);

our $ObjectManagerDisabled = 1;

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    return $Self;
}

use Data::Dumper;

sub Run {
    my ( $Self, %Param ) = @_;

    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');
    my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');
    my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');
    my $ParamObject = $Kernel::OM->Get('Kernel::System::Web::Request');
    my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

    my $TicketID = $ParamObject->GetParam( 
        Param => 'TicketID',
    );

    # get intrinsic ProjectID and ProjectName
    my $ProjectID;

    # First of all, we check if the project (customer_id) already exists or need to create
    my %Ticket = $TicketObject->TicketGet(
        TicketID => $TicketID,
        UserID   => 1,
    );

    my $ProjectName = $Self->_CheckProjectName(
        ProjectName => $Ticket{CustomerID} || '',
    );

    my %ProjectData = $TimeAccountingObject->ProjectGet(
        Project => $ProjectName
    );

    # create the project if it not exist.

    # split the date to year month day
    my $Year;
    my $Month;
    my $Day;
    if ( $Ticket{Created} =~ /^(\d\d\d\d)\-(\d\d)\-(\d\d).*$/ ) {
        $Year  = $1;
        $Month = $2;
        $Day   = $3;
    }

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

    # action string
    my %ActionList = $Self->_ActionList();
    my $ActionListConstraints = $ConfigObject->Get('TimeAccounting::ActionListConstraints');

    # action list initially only contains empty and selected element as well as elements
    # configured for selected project
    # if no constraints are configured, all actions will be displayed
    my $ActionConstrainedList = $Self->_ActionListConstraints(
        ProjectName           => $ProjectName,
        ActionList            => \%ActionList,
        ActionListConstraints => $ActionListConstraints,
    );

    if ( $Self->{Subaction} eq 'StoreNew' ) {

        # get params
        my %GetParam;
        for my $Key (qw(Day Month Year TaskID Remark StartTime EndTime Period TicketID ProjectID CreateBy)) {
            $GetParam{$Key} = $ParamObject->GetParam(
                Param => $Key,
            );
        }
        my %Errors = $Self->_Validate(
            %GetParam,
        );
        if (%Errors) {
            # date string
            my $DateString = $LayoutObject->BuildDateSelection(
                YearPeriodFuture => 0,
                Year => $GetParam{Year},
                Month => $GetParam{Month},
                Day => $GetParam{Day},
                #ValidateDateNotInFuture => 1,
                #Validate => 1,
            );

            my $ActionIDString = $LayoutObject->BuildSelection(
                Data         => $ActionConstrainedList,
                Name         => 'TaskID',
                Class        => 'Modernize Validate_Required',
                SelectedID   => $GetParam{TaskID},
                PossibleNone => 1,
            );

            my $Output = join '',
                $LayoutObject->Header(
                    #Value     => $Ticket{TicketNumber},
                    Type      => 'Small',
                    BodyClass => 'Popup',
                );
            $Output .= $LayoutObject->Output(
                TemplateFile => 'AgentTicketAccountTime',
                Data         => {
                    DateString => $DateString,
                    TaskIDString => $ActionIDString,
                    %GetParam,
                    %Errors,
                },
                AJAX => 1,
            );
            $Output .= $LayoutObject->Footer();

            return $Output;
        }
        if ($GetParam{Period}) {
            # if the period field is defined then clean the start time and the end time fields
            $GetParam{StartTime} = '';
            $GetParam{EndTime} = '';
        }
        else {
            # previous validation enforces that otherwise there must be a start time and an end time from which to compute period
            my ($StartHH, $StartMM) = $GetParam{StartTime} =~ /^(\d+):(\d+).*/;
            my ($EndHH, $EndMM) = $GetParam{EndTime} =~ /^(\d+):(\d+).*/;
            $GetParam{Period} = $EndHH - $StartHH + ($EndMM - $StartMM) / 60;
        }        
        my $Success = $TimeAccountingObject->WorkingUnitsInsert(
            Year         => $GetParam{Year},
            Month        => $GetParam{Month},
            Day          => $GetParam{Day},
            LeaveDay     => 0,
            Sick         => 0,
            Overtime     => 0,
            WorkingUnits => [
                {
                    ProjectID  => $GetParam{ProjectID},
                    ActionID   => $GetParam{TaskID},
                    Remark     => $GetParam{Remark},
                    TicketID   => $GetParam{TicketID},
                    StartTime  => $GetParam{StartTime},
                    EndTime    => $GetParam{EndTime},
                    Period     => $GetParam{Period},
                    BaseModule => 'Ticket',
                },
            ],
            UserID => $GetParam{CreateBy},
            ExternalInsert => 1,
        );
        if ( !$Success ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Could not insert working units (" .  $ParamObject->GetParam( Param => 'Period' ) 
                    . ") of ticket (TicketID: " . $ParamObject->GetParam( Param => 'TicketID' ) . ") for UserID "
                    . $ParamObject->GetParam( Param => 'CreateBy' ) . "."
            );
        }

        # challenge token check for write action
        $LayoutObject->ChallengeTokenCheck();
        return $LayoutObject->PopupClose(
            #URL => "Action=AgentTicketZoom;TicketID=$TicketID",
            Reload => 1,
        );
    }

    # date string
    my $DateString = $LayoutObject->BuildDateSelection(
        YearPeriodFuture => 0,
        #ValidateDateNotInFuture => 1,
        #Validate => 1,
    );

    # get the preselected ActionID if any is elegible
    my $ActionID;

    # if there is only one action available, that one should be preselected
    my @ActionIDList = keys %$ActionConstrainedList;
    if ( scalar @ActionIDList == 1) {
        $ActionID = $ActionIDList[0];
    }
    else {

        # otherwise preselect the action associated to the ticket service, if such association is defined and the action is within constraints
        my $ServiceToActionHashRef = $ConfigObject->Get('TimeAccounting::TicketSync::ServiceToAction');
        if ( IsHashRefWithData($ServiceToActionHashRef) ) {

            ACTION:
            for my $Action ( keys %$ServiceToActionHashRef ) {
                my $ServiceArrayRef = $ServiceToActionHashRef->{$Action};

                SERVICE:
                for my $Service (@$ServiceArrayRef) {
                    next SERVICE if $Ticket{Service} !~ /$Service/i;

                    # having the right service and action, get the ID and check if it belongs to the final constrained activities list
                    my %ActionData = $TimeAccountingObject->ActionGet(
                        Action => $Action
                    );
                    if ( $ActionConstrainedList->{ $ActionData{ID} } ) {
                        $ActionID = $ActionData{ID};
                    }
                    last ACTION;
                }
            }
        }
    }

    my $ActionIDString = $LayoutObject->BuildSelection(
        Data         => $ActionConstrainedList,
        Name         => 'TaskID',
        Class        => 'Modernize Validate_Required',
        SelectedID   => $ActionID,
        PossibleNone => 1,
    );

    my $Output = join '',
        $LayoutObject->Header(
            #Value     => $Ticket{TicketNumber},
            Type      => 'Small',
            BodyClass => 'Popup',
        );
    $Output .= $LayoutObject->Output(
        TemplateFile => 'AgentTicketAccountTime',
        Data         => {
            DateString => $DateString,
            TaskIDString => $ActionIDString,
            TicketID => $TicketID,
            ProjectID => $ProjectID,
            CreateBy => $Ticket{CreateBy},
        },
        AJAX => 1,
    );
    $Output .= $LayoutObject->Footer();

    return $Output;
}

sub _ActionList {
    my $Self = shift;

    my %ActionList;
    my %Action = $Kernel::OM->Get('Kernel::System::TimeAccounting')->ActionSettingsGet();

    # get action settings
    ACTIONID:
    for my $ActionID ( sort keys %Action ) {
        next ACTIONID if !$Action{$ActionID}{ActionStatus};
        next ACTIONID if !$Action{$ActionID}{Action};
        $ActionList{$ActionID} = $Action{$ActionID}{Action};
    }
    $ActionList{''} = '';

    return %ActionList;
}

sub _ActionListConstraints {
    my ( $Self, %Param ) = @_;

    my %List;
    if ( $Param{ProjectName} && keys %{ $Param{ActionListConstraints} } ) {

        # loop over actions to find matches for configured project
        # and action reg-exp pairs
        for my $ActionID ( sort keys %{ $Param{ActionList} } ) {

            my $ActionName = $Param{ActionList}->{$ActionID};

            PROJECTNAMEREGEXP:
            for my $ProjectNameRegExp ( sort keys %{ $Param{ActionListConstraints} } ) {
                my $ActionNameRegExp = $Param{ActionListConstraints}->{$ProjectNameRegExp};
                if (
                    $Param{ProjectName}   =~ m{$ProjectNameRegExp}smx
                    && $ActionName =~ m{$ActionNameRegExp}smx
                    )
                {
                    $List{$ActionID} = $ActionName;
                    last PROJECTNAMEREGEXP;
                }
            }
        }
    }

    # all available actions will be added if no action was added above (possible misconfiguration)
    if ( !keys %List ) {
        for my $ActionID ( sort keys %{ $Param{ActionList} } ) {
            my $ActionName = $Param{ActionList}->{$ActionID};
            $List{$ActionID} = $ActionName;
        }
    }

    return \%List;
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

sub _Validate {
    my ( $Self, %Param ) = @_;
    my %DateErrors = $Self->_ValidateDate(
        Year => $Param{Year},
        Month => $Param{Month},
        Day => $Param{Day},
    );

    return %DateErrors if %DateErrors;

    my %PeriodErrors = $Self->_ValidatePeriod(
        StartTime => $Param{StartTime},
        EndTime => $Param{EndTime},
        Period => $Param{Period},
    );

    return %PeriodErrors;
}

sub _ValidateDate {
    my ( $Self, %Param ) = @_;
    return;
}

sub _ValidatePeriod {
    my ( $Self, %Param ) = @_;

    if (!$Param{Period} && !$Param{StartTime}) {
        return(
            StartTimeServerError => "Error",
            PeriodServerError => "Error",
        );
    }
}

1;