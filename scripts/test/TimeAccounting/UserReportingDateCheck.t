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

# get helper object
$Kernel::OM->ObjectParamAdd(
    'Kernel::System::UnitTest::Helper' => {
        RestoreDatabase => 1,
    },
);
my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

my $UserLogin = $Helper->TestUserCreate();

my $UserObject = $Kernel::OM->Get('Kernel::System::User');

my $UserID = $UserObject->UserLookup(
    UserLogin => $UserLogin,
);

my $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');

my $Success = $TimeAccountingObject->UserSettingsInsert(
    UserID => $UserID,
    Period => 1,
);
$Self->True(
    $Success,
    "UserSettingsInsert() for user $UserID",
);

$Success = $TimeAccountingObject->UserSettingsUpdate(
    UserID        => $UserID,
    Description   => 'Some Text',
    CreateProject => 1 || 0,
    ShowOvertime  => 1 || 0,
    Period        => {
        1 => {
            DateStart   => '2016-01-01',
            DateEnd     => '2016-12-31',
            WeeklyHours => '38',
            LeaveDays   => '25',
            Overtime    => '38',
            UserStatus  => 1,
        },
    },
);
$Self->True(
    $Success,
    "UserSettingsUpdate() for user $UserID",
);

# This unit test only check that the function uses correct date values and it does not break
for my $Month ( 1 .. 12 ) {
    my $MonthSuccess = 1;
    for my $Day ( 1 .. 28 ) {
        $Success = $TimeAccountingObject->WorkingUnitsInsert(
            Year   => '2016',
            Month  => $Month,
            Day    => $Day,
            Sick   => 1,
            UserID => $UserID,
        );
        if ( !$Success ) {
            $MonthSuccess = 0;
        }
    }
    $Self->True(
        $Success,
        "WorkingUnitsInsert() in month $Month for user $UserID",
    );
}

my @Tests = (
    {
        Name   => '2016-Jan-1',
        Config => {
            Year  => 2016,
            Month => 1,
            Day   => 1,
        },
    },
    {
        Name   => '2016-Feb-1',
        Config => {
            Year  => 2016,
            Month => 2,
            Day   => 1,
        },
    },
    {
        Name   => '2016-Oct-1',
        Config => {
            Year  => 2016,
            Month => 10,
            Day   => 1,
        },
    },
    {
        Name   => '2016-Dec-12',
        Config => {
            Year  => 2016,
            Month => 12,
            Day   => 12,
        },
    },
);

for my $Test (@Tests) {

    $Kernel::OM->ObjectsDiscard(
        Objects => [ 'Kernel::System::TimeAccounting', ],
    );

    # Redefine VacationCheck in order to break on a wrong date (this should not happen).
    no warnings qw( once redefine );    ## no critic qw(TestingAndDebugging::ProhibitNoWarnings)
    local *Kernel::System::TimeAccounting::VacationCheck = sub {
        my ( $Self, %Param ) = @_;

        # check required params
        for (qw(Year Month Day)) {
            if ( !$Param{$_} ) {
                $Kernel::OM->Get('Kernel::System::Log')->Log(
                    Priority => 'error',
                    Message  => "VacationCheck: Need $_!",
                );
                return;
            }
        }

        my $DateTimeObject = $Kernel::OM->Create(
            'Kernel::System::DateTime',
            ObjectParams => {
                %Param,
                TimeZone => $Self->{TimeZone},
            },
        );

        # If date is wrong DateTimeObject is undefined and it should break unit test if
        #   IsVacationDay() is called, this happens at certain point in UserReporting().

        return $DateTimeObject->IsVacationDay(
            Calendar => $Param{Calendar},
        );
    };
    use warnings;

    $TimeAccountingObject = $Kernel::OM->Get('Kernel::System::TimeAccounting');

    my %Data = $TimeAccountingObject->UserReporting( %{ $Test->{Config} } );

    $Self->IsNotDeeply(
        \%Data,
        {},
        "$Test->{Name} UserReporting() return value is not empty"
    );
}
1;
