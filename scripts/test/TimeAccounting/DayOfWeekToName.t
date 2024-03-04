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

use strict;
use warnings;

our $Self;

my @Tests = (
    {
        Name    => 'Empty',
        Config  => {},
        Success => 0,
    },
    {
        Name   => 'Wrong Day (string)',
        Config => {
            Number => 'a',
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Day (0)',
        Config => {
            Number => 0,
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Day (-1)',
        Config => {
            Number => -1,
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Day (8)',
        Config => {
            Number => 8,
        },
        Success => 0,
    },
    {
        Name   => 'Monday',
        Config => {
            Number => 1,
        },
        ExpectedResult => 'Monday',
        Success        => 1,
    },
    {
        Name   => 'Tuesday',
        Config => {
            Number => 2,
        },
        ExpectedResult => 'Tuesday',
        Success        => 1,
    },
    {
        Name   => 'Wednesday',
        Config => {
            Number => 3,
        },
        ExpectedResult => 'Wednesday',
        Success        => 1,
    },
    {
        Name   => 'Thursday',
        Config => {
            Number => 4,
        },
        ExpectedResult => 'Thursday',
        Success        => 1,
    },
    {
        Name   => 'Friday',
        Config => {
            Number => 5,
        },
        ExpectedResult => 'Friday',
        Success        => 1,
    },
    {
        Name   => 'Saturday',
        Config => {
            Number => 6,
        },
        ExpectedResult => 'Saturday',
        Success        => 1,
    },
    {
        Name   => 'Sunday',
        Config => {
            Number => 7,
        },
        ExpectedResult => 'Sunday',
        Success        => 1,
    },
);

no warnings 'once';    ## no critic qw(TestingAndDebugging::ProhibitNoWarnings)
my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');
use warnings;

TEST:
for my $Test (@Tests) {
    my $DayName = $TimeAccountingObject->DayOfWeekToName( %{ $Test->{Config} } );

    if ( !$Test->{Success} ) {
        $Self->False(
            $DayName,
            "$Test->{Name} DayOfWeekToName() - with false",
        );
        next TEST;
    }

    $Self->Is(
        $DayName,
        $Test->{ExpectedResult},
        "$Test->{Name} DayOfWeekToName()",
    );
}

1;
