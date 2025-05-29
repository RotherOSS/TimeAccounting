# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.de/
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

package Kernel::Modules::AgentTimeAccountingReportingTicket;

use strict;
use warnings;

use Kernel::Language qw(Translatable);

use Kernel::System::VariableCheck qw(:all);

our $ObjectManagerDisabled = 1;

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    my $DateTimeObject = $Kernel::OM->Create('Kernel::System::DateTime');

    $Self->{TimeZone} = $Param{TimeZone}
        || $Param{UserTimeZone}
        || $DateTimeObject->OTOBOTimeZoneGet();

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my @MonthArray = (
        '',     'January', 'February', 'March',     'April',   'May',
        'June', 'July',    'August',   'September', 'October', 'November',
        'December',
    );
    my @WeekdayArray = ( 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun', );

    # get needed objects
    my $LayoutObject          = $Kernel::OM->Get('Kernel::Output::HTML::Layout');
    my $ParamObject           = $Kernel::OM->Get('Kernel::System::Web::Request');
    my $TimeAccountingObject  = $Kernel::OM->Get('Kernel::System::TimeAccounting');
    my $DateTimeObjectCurrent = $Kernel::OM->Create('Kernel::System::DateTime');
    my $UserObject            = $Kernel::OM->Get('Kernel::System::User');

    # ---------------------------------------------------------- #
    # time accounting ticket reporting
    # ---------------------------------------------------------- #
    my $Config = $Kernel::OM->Get('Kernel::Config')->Get("TimeAccounting::Frontend::ReportingProject");

    my %Frontend = ();

    # permission check
    if ( !$Self->{AccessRo} ) {
        return $LayoutObject->NoPermission(
            WithHeader => 'yes',
        );
    }

    # get params
    $Param{TicketID} = $ParamObject->GetParam( Param => 'TicketID' );

    # check needed params
    if ( !$Param{TicketID} ) {
        return $LayoutObject->ErrorScreen(
            Message => Translatable('ReportingProject: Need TicketID')
        );
    }

    # get needed objects
    my $TicketObject  = $Kernel::OM->Get('Kernel::System::Ticket');
    my $ArticleObject = $Kernel::OM->Get('Kernel::System::Ticket::Article');

    # check permissions
    my $Access = $TicketObject->TicketPermission(
        Type     => 'ro',
        TicketID => $Param{TicketID},
        UserID   => $Self->{UserID}
    );

    # error screen, don't show ticket
    return $LayoutObject->NoPermission(
        Message => Translatable(
            "This ticket does not exist, or you don't have permissions to access it in its current state."
        ),
        WithHeader => $Self->{Subaction} && $Self->{Subaction} eq 'ArticleUpdate' ? 'no' : 'yes',
    ) if !$Access;

    # get ticket attributes
    my %Ticket = $TicketObject->TicketGet(
        TicketID      => $Param{TicketID},
        DynamicFields => 1,
    );

    # get ACL restrictions
    my %PossibleActions = (
        AgentTimeAccountingReportingTicket => 'AgentTimeAccountingReportingTicket',
    );

    my $ACL = $TicketObject->TicketAcl(
        Data          => \%PossibleActions,
        Action        => $Self->{Action},
        TicketID      => $Param{TicketID},
        ReturnType    => 'Action',
        ReturnSubType => '-',
        UserID        => $Self->{UserID},
    );

    my %AclAction = %PossibleActions;
    if ($ACL) {
        %AclAction = $TicketObject->TicketAclActionData();
    }

    # check if ACL restrictions exist
    my %AclActionLookup = reverse %AclAction;

    # show error screen if ACL prohibits this action
    if ( !$AclActionLookup{AgentTimeAccountingReportingTicket} ) {
        return $LayoutObject->NoPermission( WithHeader => 'yes' );
    }

    my $ProjectName = $Self->_CheckProjectName(
        ProjectName => $Ticket{CustomerID} || '',
    );

    my %ProjectData = $TimeAccountingObject->ProjectGet(
        Project => $ProjectName
    );

    my $ProjectID = $ProjectData{ID};

    # check needed params
    if ( !$ProjectID ) {
        return $LayoutObject->ErrorScreen(
            Message => Translatable('ReportingProject: No Project for Ticket found.')
        );
    }

    my %Action  = $TimeAccountingObject->ActionSettingsGet();
    my %Project = $TimeAccountingObject->ProjectSettingsGet();
    $Param{Project} = $Project{Project}->{ $ProjectID };

    # get system users
    my %ShownUsers = $UserObject->UserList(
        Type  => 'Long',
        Valid => 0
    );

    $Param{ShowOnlyActiveUsers} = $Config->{ShowOnlyActiveUsers};

    if ( $Param{ShowOnlyActiveUsers} ) {

        # get registered users
        my %RegisteredUsers = $TimeAccountingObject->UserList();

        # reduce shown users to only the ones that are registered in time accounting
        %ShownUsers = map { $_ => $ShownUsers{$_} } keys %RegisteredUsers;
    }

    # necessary because the ProjectActionReporting is not reworked
    my ( $Sec, $Min, $Hour, $CurrentDay, $Month, $Year ) = $TimeAccountingObject->SystemTime2Date(
        SystemTime => $DateTimeObjectCurrent->ToEpoch(),
    );
    %ProjectData    = ();
    my %ProjectTime = ();

    my @UserWhiteList;

    # Only one function should be enough
    for my $UserID ( sort keys %ShownUsers ) {

        # Overview per project and action
        # REMARK: This is the wrong function to get this information
        %ProjectData = $TimeAccountingObject->ProjectActionReporting(
            Year     => $Year,
            Month    => $Month,
            UserID   => $UserID,
            TicketID => $Ticket{TicketID},
        );
        if ( $ProjectData{ $ProjectID } ) {
            my $UserTotalHoursInProject;
            my $ActionsRef = $ProjectData{ $ProjectID }->{Actions};
            for my $ActionID ( sort keys %{$ActionsRef} ) {
                $ProjectTime{$ActionID}->{$UserID}->{Hours} = $ActionsRef->{$ActionID}->{Total};

                # remember the sum of all hours of all tasks
                $UserTotalHoursInProject += $ActionsRef->{$ActionID}->{Total} || 0;
            }

            # remember only the users that has been added hours to this project
            if ( defined $UserTotalHoursInProject && $UserTotalHoursInProject > 0 ) {
                push @UserWhiteList, $UserID;
            }
        }
    }

    if ( $Param{ShowOnlyActiveUsers} ) {

        # reduce shown users to only the ones that are active in the project (by adding hours)
        %ShownUsers = map { $_ => $ShownUsers{$_} } @UserWhiteList;
    }

    if ( !IsHashRefWithData( \%ShownUsers ) ) {
        $LayoutObject->Block(
            Name => 'NoUserDataFoundMsg',
            Data => {},
        );
    }
    else {
        $LayoutObject->Block(
            Name => 'UserTable',
            Data => {},
        );

        # show the header line
        for my $UserID ( sort { $ShownUsers{$a} cmp $ShownUsers{$b} } keys %ShownUsers ) {
            $LayoutObject->Block(
                Name => 'UserName',
                Data => { User => $ShownUsers{$UserID} },
            );
        }

        # better solution for sort actions necessary
        my %NewAction = ();
        for my $ActionID ( sort keys %ProjectTime ) {
            $NewAction{$ActionID} = $Action{$ActionID}->{Action};
        }
        %Action = %NewAction;

        # show the results
        my %Total = ();
        for my $ActionID ( sort { $Action{$a} cmp $Action{$b} } keys %Action ) {
            my $TotalHours = 0;
            $LayoutObject->Block(
                Name => 'Action',
                Data => {
                    Action => $Action{$ActionID},
                },
            );
            for my $UserID ( sort { $ShownUsers{$a} cmp $ShownUsers{$b} } keys %ShownUsers ) {
                $TotalHours     += $ProjectTime{$ActionID}{$UserID}{Hours} || 0;
                $Total{$UserID} += $ProjectTime{$ActionID}{$UserID}{Hours} || 0;
                $LayoutObject->Block(
                    Name => 'User',
                    Data => {
                        Hours =>
                            sprintf( "%.2f", $ProjectTime{$ActionID}{$UserID}{Hours} || 0 ),
                    },
                );
            }

            # Total
            $LayoutObject->Block(
                Name => 'User',
                Data => {
                    Hours => sprintf( "%.2f", $TotalHours ),
                },
            );
        }
        $Param{TotalAll} = 0;
        for my $UserID ( sort { $ShownUsers{$a} cmp $ShownUsers{$b} } keys %ShownUsers ) {
            $Param{TotalAll} += $Total{$UserID};
            $LayoutObject->Block(
                Name => 'UserTotal',
                Data => {
                    Total => sprintf( "%.2f", $Total{$UserID} ),
                },
            );
        }

        $LayoutObject->Block(
            Name => 'UserTotalAll',
            Data => {
                TotalAll => sprintf( "%.2f", $Param{TotalAll} ),
            },
        );
    }
    my @ProjectHistoryArray = $TimeAccountingObject->ProjectHistory(
        ProjectID => $ProjectID,
        TicketID  => $Ticket{TicketID},
    );

    if ( !IsArrayRefWithData( \@ProjectHistoryArray ) ) {
        $LayoutObject->Block(
            Name => 'NoProjectDataFoundMsg',
            Data => {},
        );
    }
    else {
        $LayoutObject->Block(
            Name => 'ProjectTable',
            Data => {
                %Param,
                %Frontend
            },
        );

        for my $Row (@ProjectHistoryArray) {
            $LayoutObject->Block(
                Name => 'Row',
                Data => {
                    User   => $Row->{User},
                    Action => $Row->{Action},
                    Remark => $Row->{Remark} || '--',
                    Period => sprintf( "%.2f", $Row->{Period} ),
                    Date   => $Row->{Date},
                },
            );
        }

        # show the total sum of hours at the end of the history list
        # I also can use $Param{TotalAll}
        my $ProjectTotalHours = sprintf(
            "%.2f",
            $TimeAccountingObject->ProjectTotalHours(
                ProjectID => $ProjectID,
                TicketID  => $Ticket{TicketID},
            )
        );

        $LayoutObject->Block(
            Name => 'HistoryTotal',
            Data => {
                HistoryTotal => $ProjectTotalHours || 0,
            },
        );
    }

    # build output
    my $Output = $LayoutObject->Header(
        Title => Translatable('Reporting Project'),
    );
    $Output .= $LayoutObject->NavigationBar();
    $Output .= $LayoutObject->Output(
        Data => {
            %Ticket,
            %Param,
            %Frontend,
        },
        TemplateFile => 'AgentTimeAccountingReportingTicket',
    );
    $Output .= $LayoutObject->Footer();

    return $Output;
}

sub _CheckProjectName {
    my ( $Self, %Param ) = @_;

    my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');
    my $ConfigObject         = $Kernel::OM->Get('Kernel::Config');

    my $DefaultProjectID = $ConfigObject->Get('TimeAccounting::TicketSync::DefaultProjectID');
    my %DefaultProject   = $TimeAccountingObject->ProjectGet( ID => $DefaultProjectID );
    my $DefaultName      = $DefaultProject{Project};

    # check needed stuff
    if ( !$Param{ProjectName} ) {
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

1;
