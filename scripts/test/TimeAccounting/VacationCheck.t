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

# declare externally defined variables to avoid errors under 'use strict'
our $Self;

$Kernel::OM->Get('Kernel::Config')->Set(
    Key   => 'TimeVacationDays::Calendar1',
    Value => {
        1 => {
            1 => 'New Year\'s Day'
        },
        12 => {
            12 => 'Best day in world',
            24 => 'Christmas Eve',
            25 => 'First Christmas Day',
            26 => 'Second Christmas Day',
            31 => 'New Year\'s Eve'
        },
        5 => {
            1 => 'International Workers\' Day'
        },
    },
);

my @Tests = (
    {
        Name          => 'No Params',
        Config        => {},
        ExpectedValue => 0,
    },
    {
        Name   => 'No Year',
        Config => {
            Month    => 1,
            Day      => 1,
            Calendar => 1,
        },
        ExpectedValue => 0,
    },
    {
        Name   => 'No Month',
        Config => {
            Year     => 2017,
            Day      => 1,
            Calendar => 1,
        },
        ExpectedValue => 0,
    },
    {
        Name   => 'No Day',
        Config => {
            Year     => 2017,
            Month    => 1,
            Calendar => 1,
        },
        ExpectedValue => 0,
    },
    {
        Name   => 'Wrong Date',
        Config => {
            Year     => 2017,
            Month    => 2,
            Day      => 29,
            Calendar => 1,
        },
        ExpectedValue => 0,
    },
    {
        Name   => 'No Vacation Day',
        Config => {
            Year     => 2017,
            Month    => 2,
            Day      => 15,
            Calendar => 1,
        },
        ExpectedValue => 0,
    },
    {
        Name   => 'Vacation Day Numeric Month',
        Config => {
            Year     => 2017,
            Month    => 1,
            Day      => 1,
            Calendar => 1,
        },
        ExpectedValue => "New Year's Day",
    },
    {
        Name   => 'Vacation Day String Month',
        Config => {
            Year     => 2017,
            Month    => '01',
            Day      => 1,
            Calendar => 1,
        },
        ExpectedValue => "New Year's Day",
    },
    {
        Name   => 'Vacation Day Custom',
        Config => {
            Year     => 2017,
            Month    => 12,
            Day      => 12,
            Calendar => 1,
        },
        ExpectedValue => "Best day in world",
    }
);

my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');

for my $Test (@Tests) {

    my $Result = $TimeAccountingObject->VacationCheck( %{ $Test->{Config} } );

    $Self->Is(
        $Result // 0,
        $Test->{ExpectedValue},
        "$Test->{Name} VacationCheck()",
    );

}

1;
