# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2020 Rother OSS GmbH, https://otobo.de/
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

package Kernel::Output::HTML::ToolBar::IncompleteWorkingDays;

use strict;
use warnings;

use Kernel::Language qw(Translatable);

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::Output::HTML::Layout',
    'Kernel::System::Group',
    'Kernel::System::TimeAccounting',
);

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {};
    bless( $Self, $Type );

    $Self->{UserID} = $Param{UserID} || die "Got no UserID!";

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # Define action and get its frontend module registration.
    my $Action = 'AgentTimeAccountingEdit';
    my $Config = $Kernel::OM->Get('Kernel::Config')->Get('Frontend::Module')->{$Action};

    # Do not show icon if frontend module is not registered.
    return if !$Config;

    # Get group names from config.
    my @GroupNames = @{ $Config->{Group} || [] };

    # If access is restricted, allow access only if user has appropriate permissions in configured group(s).
    if (@GroupNames) {

        my $GroupObject = $Kernel::OM->Get('Kernel::System::Group');

        # Get user groups, where the user has the appropriate permissions.
        my %GroupList = $GroupObject->GroupMemberList(
            UserID => $Self->{UserID},
            Type   => 'rw',
            Result => 'HASH',
        );

        my $Permission = 0;

        GROUP:
        for my $GroupName (@GroupNames) {
            next GROUP if !$GroupName;

            # Get the group ID.
            my $GroupID = $GroupObject->GroupLookup(
                Group => $GroupName,
            );
            next GROUP if !$GroupID;

            # Stop checking if membership in at least one group is found.
            if ( $GroupList{$GroupID} ) {
                $Permission = 1;
                last GROUP;
            }
        }

        # Deny access if the agent doesn't have the appropriate permissions.
        return if !$Permission;
    }

    my $DateTimeObject   = $Kernel::OM->Create('Kernel::System::DateTime');
    my $DateTimeSettings = $DateTimeObject->Get();

    my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');

    my %UserCurrentPeriod = $TimeAccountingObject->UserCurrentPeriodGet(
        Year  => $DateTimeSettings->{Year},
        Month => $DateTimeSettings->{Month},
        Day   => $DateTimeSettings->{Day},
    );

    # Deny access, if user has no valid period.
    return if !$UserCurrentPeriod{ $Self->{UserID} };

    # Get the number of incomplete working days.
    my $Count                 = 0;
    my %IncompleteWorkingDays = $TimeAccountingObject->WorkingUnitsCompletnessCheck(
        UserID => $Self->{UserID},
    );

    YEARID:
    for my $YearID ( sort keys %{ $IncompleteWorkingDays{Incomplete} } ) {

        next YEARID if !$YearID;
        next YEARID if !$IncompleteWorkingDays{Incomplete}{$YearID};
        next YEARID if ref $IncompleteWorkingDays{Incomplete}{$YearID} ne 'HASH';

        # Extract year.
        my %Year = %{ $IncompleteWorkingDays{Incomplete}{$YearID} };

        MONTH:
        for my $MonthID ( sort keys %Year ) {

            next MONTH if !$MonthID;
            next MONTH if !$Year{$MonthID};
            next MONTH if ref $Year{$MonthID} ne 'HASH';

            # extract month
            my %Month = %{ $Year{$MonthID} };

            $Count += scalar keys %Month;

            # Remove current day because it makes no sense to show the current day as incomplete.
            if (
                $DateTimeSettings->{Year} eq $YearID
                && $MonthID eq sprintf( '%02d', $DateTimeSettings->{Month} )
                && defined $Month{ sprintf( '%02d', $DateTimeSettings->{Day} ) }
                )
            {
                $Count--;
            }
        }
    }

    my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');

    # Get toolbar object parameters.
    my $Class = $Param{Config}->{CssClass};
    my $Text  = Translatable('Incomplete working days');
    my $URL   = $LayoutObject->{Baselink};
    my $Icon  = $Param{Config}->{Icon};

    return () if !$Count;

    my %Return = (
        1000810 => {
            Block       => 'ToolBarItem',
            Description => $Text,
            Count       => $Count,
            Class       => $Class,
            Icon        => $Icon,
            Link        => $URL . 'Action=' . $Action,
            AccessKey   => '',
        },
    );

    return %Return;
}

1;
