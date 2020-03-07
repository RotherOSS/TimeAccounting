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

package Kernel::Output::HTML::Notification::TimeAccounting;

use strict;
use warnings;

use Kernel::Language qw(Translatable);

our @ObjectDependencies = (
    'Kernel::System::DateTime',
    'Kernel::System::TimeAccounting',
    'Kernel::Output::HTML::Layout',
);

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get UserID param
    $Self->{UserID} = $Param{UserID} || die "Got no UserID!";

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $DateTimeObject   = $Kernel::OM->Create('Kernel::System::DateTime');
    my $DateTimeSettings = $DateTimeObject->Get();

    # get time accounting object
    my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');

    my %User = $TimeAccountingObject->UserCurrentPeriodGet(
        Year  => $DateTimeSettings->{Year},
        Month => $DateTimeSettings->{Month},
        Day   => $DateTimeSettings->{Day},
    );
    if ( $User{ $Self->{UserID} } ) {
        my %IncompleteWorkingDays = $TimeAccountingObject->WorkingUnitsCompletnessCheck(
            UserID => $Self->{UserID},
        );

        # redirect if incomplete working day are out of range
        my $LayoutObject = $Kernel::OM->Get('Kernel::Output::HTML::Layout');
        my $Priority     = ( $IncompleteWorkingDays{EnforceInsert} ) ? 'Error' : 'Warning';
        if ( $IncompleteWorkingDays{Warning} || $IncompleteWorkingDays{EnforceInsert} ) {
            return $Kernel::OM->Get('Kernel::Output::HTML::Layout')->Notify(
                Priority => $Priority,
                Link     => $LayoutObject->{Baselink} . 'Action=AgentTimeAccountingEdit',
                Info     => Translatable('Please insert your working hours!'),
            );
        }
    }

    return '';
}

1;
