# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2021 Rother OSS GmbH, https://otobo.de/
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

package Kernel::Language::hu_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Valóban törölni szeretné ennek a napnak az időelszámolását?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Időfeljegyzés szerkesztése';
    $Self->{Translation}->{'Go to settings'} = 'Ugrás a beállításokhoz';
    $Self->{Translation}->{'Date Navigation'} = 'Dátum navigáció';
    $Self->{Translation}->{'Days without entries'} = 'Bejegyzések nélküli napok';
    $Self->{Translation}->{'Select all days'} = 'Minden nap kijelölése';
    $Self->{Translation}->{'Mass entry'} = 'Tömeges bejegyzés';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Válassza ki a távolléte okát a kijelölt napokra';
    $Self->{Translation}->{'On vacation'} = 'Szabadságon';
    $Self->{Translation}->{'On sick leave'} = 'Betegszabadságon';
    $Self->{Translation}->{'On overtime leave'} = 'Csúsztatáson túlóra miatt';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'A kötelező mezők „*” jellel vannak megjelölve.';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Ki kell töltenie a kezdő és befejező időt vagy egy időszakot.';
    $Self->{Translation}->{'Project'} = 'Projekt';
    $Self->{Translation}->{'Task'} = 'Feladat';
    $Self->{Translation}->{'Remark'} = 'Észrevétel';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Adjon hozzá egy 8 karakternél hosszabb észrevételt!';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Negatív időpontok nem engedélyezettek.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Az ismétlődő órák nem engedélyezettek. A kezdési idő egy másik időközre illeszkedik.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Érvénytelen formátum! ÓÓ:PP formátumú időt adjon meg.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = 'A 24:00 csak befejezési időként engedélyezett.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Érvénytelen időpont! Egy napnak csak 24 órája van.';
    $Self->{Translation}->{'End time must be after start time.'} = 'A befejezési időnek a kezdési idő után kell lennie.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Az ismétlődő órák nem engedélyezettek. A befejezési idő egy másik időközre illeszkedik.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Érvénytelen időszak! Egy napnak csak 24 órája van.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Egy érvényes időszaknak nagyobbnak kell lennie nullánál.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Érvénytelen időszak! Negatív időszakok nem engedélyezettek.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Egy sor hozzáadása';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Csak egy jelölőnégyzet elemet választhat ki!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Biztos benne, hogy dolgozott, mialatt betegszabadságon volt?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Biztos benne, hogy dolgozott, mialatt szabadságon volt?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Biztos benne, hogy dolgozott, mialatt csúsztatott?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Biztos benne, hogy több mint 16 órát dolgozott?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Időjelentés havi áttekintése';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Túlóra (óra)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Túlóra (ez a hónap)';
    $Self->{Translation}->{'Overtime (total)'} = 'Túlóra (összesen)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Megmaradt csúsztatás';
    $Self->{Translation}->{'Vacation (Days)'} = 'Szabadság (nap)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Kivett szabadság (ez a hónap)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Kivett szabadság (összesen)';
    $Self->{Translation}->{'Remaining vacation'} = 'Megmaradt szabadság';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Betegszabadság (nap)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Kivett betegszabadság (ez a hónap)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Kivett betegszabadság (összesen)';
    $Self->{Translation}->{'Previous month'} = 'Előző hónap';
    $Self->{Translation}->{'Next month'} = 'Következő hónap';
    $Self->{Translation}->{'Weekday'} = 'Hétköznap';
    $Self->{Translation}->{'Working Hours'} = 'Munkaidő';
    $Self->{Translation}->{'Total worked hours'} = 'Ledolgozott órák összesen';
    $Self->{Translation}->{'User\'s project overview'} = 'A felhasználó projektjének áttekintője';
    $Self->{Translation}->{'Hours (monthly)'} = 'Órák (havonta)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Órák (élettartam)';
    $Self->{Translation}->{'Grand total'} = 'Mindösszesen';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Időjelentés';
    $Self->{Translation}->{'Month Navigation'} = 'Hónap navigáció';
    $Self->{Translation}->{'Go to date'} = 'Ugrás dátumra';
    $Self->{Translation}->{'User reports'} = 'Felhasználói jelentések';
    $Self->{Translation}->{'Monthly total'} = 'Havi összesítő';
    $Self->{Translation}->{'Lifetime total'} = 'Élettartam összesen';
    $Self->{Translation}->{'Overtime leave'} = 'Csúsztatás';
    $Self->{Translation}->{'Vacation'} = 'Szabadság';
    $Self->{Translation}->{'Sick leave'} = 'Betegszabadság';
    $Self->{Translation}->{'Vacation remaining'} = 'Hátralévő szabadság';
    $Self->{Translation}->{'Project reports'} = 'Projekt jelentések';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Projekt jelentés';
    $Self->{Translation}->{'Go to reporting overview'} = 'Ugrás a jelentés áttekintőhöz';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Jelenleg csak az aktív felhasználók vannak megjelenítve ebben a projektben. A működés módosításához frissítse a beállítást:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Jelenleg minden időelszámoló felhasználó meg van jelenítve. A működés módosításához frissítse a beállítást:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Időelszámolás projektbeállítások szerkesztése';
    $Self->{Translation}->{'Add project'} = 'Projekt hozzáadása';
    $Self->{Translation}->{'Go to settings overview'} = 'Ugrás a beállítások áttekintőhöz';
    $Self->{Translation}->{'Add Project'} = 'Projekt hozzáadása';
    $Self->{Translation}->{'Edit Project Settings'} = 'Projektbeállítások szerkesztése';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Már létezik egy ilyen nevű projekt. Válasszon egy másik nevet.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Időelszámolási beállítások szerkesztése';
    $Self->{Translation}->{'Add task'} = 'Feladat hozzáadása';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Szűrő a projektkehez, feladatokhoz vagy felhasználókhoz';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Az időszakok nem törölhetők.';
    $Self->{Translation}->{'Project List'} = 'Projektlista';
    $Self->{Translation}->{'Task List'} = 'Feladatlista';
    $Self->{Translation}->{'Add Task'} = 'Feladat hozzáadása';
    $Self->{Translation}->{'Edit Task Settings'} = 'Feladatbeállítások szerkesztése';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Már létezik egy ilyen nevű feladat. Válasszon egy másik nevet.';
    $Self->{Translation}->{'User List'} = 'Felhasználólista';
    $Self->{Translation}->{'User Settings'} = 'Felhasználói beállítások';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'A felhasználó megtekintheti a túlórákat';
    $Self->{Translation}->{'Show Overtime'} = 'Túlóra megjelenítése';
    $Self->{Translation}->{'User is allowed to create projects'} = 'A felhasználó létrehozhat projekteket';
    $Self->{Translation}->{'Allow project creation'} = 'Projektlétrehozás engedélyezése';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'A felhasználónak lehetősége van kihagyni az időelszámolást';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Időelszámolás kihagyásának lehetővé tétele';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Ha ez a lehetőség van kiválasztva, akkor az időelszámolás ténylegesen választható a felhasználónak.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'Nem lesznek figyelmeztetések a hiányzó bejegyzésekről és nem lesz beírási kényszerítés.';
    $Self->{Translation}->{'Time Spans'} = 'Időtartamok';
    $Self->{Translation}->{'Period Begin'} = 'Időszak kezdete';
    $Self->{Translation}->{'Period End'} = 'Időszak vége';
    $Self->{Translation}->{'Days of Vacation'} = 'Szabadság napjai';
    $Self->{Translation}->{'Hours per Week'} = 'Órák hetente';
    $Self->{Translation}->{'Authorized Overtime'} = 'Jogosult túlóra';
    $Self->{Translation}->{'Start Date'} = 'Kezdési dátum';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Érvényes dátumot illesszen be.';
    $Self->{Translation}->{'End Date'} = 'Befejezési dátum';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Az időszak végének az időszak kezdete után kell lennie.';
    $Self->{Translation}->{'Leave Days'} = 'Szabadság napjai';
    $Self->{Translation}->{'Weekly Hours'} = 'Heti órák';
    $Self->{Translation}->{'Overtime'} = 'Túlóra';
    $Self->{Translation}->{'No time periods found.'} = 'Nem találhatók időszakok.';
    $Self->{Translation}->{'Add time period'} = 'Időszak hozzáadása';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Időfeljegyzés megtekintése';
    $Self->{Translation}->{'View of '} = 'A következő megtekintése: ';
    $Self->{Translation}->{'Previous day'} = 'Előző nap';
    $Self->{Translation}->{'Next day'} = 'Következő nap';
    $Self->{Translation}->{'No data found for this day.'} = 'Nem található adat erre a napra.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Nem lehet beilleszteni a munkaegységeket!';
    $Self->{Translation}->{'Last Projects'} = 'Legutóbbi projektek';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Nem lehet elmenteni a beállításokat, mert egy napnak csak 24 órája van!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Nem lehet törölni a munkaegységeket!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Ez a dátum a határon kívül van, de még nem illesztette be ez a napot, így kap még egy(!) esélyt a beillesztésre';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Befejezetlen munkanapok';
    $Self->{Translation}->{'Successful insert!'} = 'Sikeres beillesztés!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Hiba történt több dátum beillesztése közben!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'A bejegyzések sikeresen beillesztve a különböző dátumokhoz!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'A megadott dátum érvénytelen volt! A dátum a mai napra lett módosítva.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Nincs időszak beállítva, vagy a megadott dátum a meghatározott időszakokon kívül van.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Vegye fel a kapcsolatot az időelszámolás adminisztrátorával, hogy frissítse az időszakait!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Legutóbb kiválasztott projektek';
    $Self->{Translation}->{'All Projects'} = 'Minden projekt';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'Jelentés projekt: projektazonosító szükséges';
    $Self->{Translation}->{'Reporting Project'} = 'Jelentés projekt';
    $Self->{Translation}->{'Reporting'} = 'Jelentés';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Nem lehet frissíteni a felhasználói beállításokat!';
    $Self->{Translation}->{'Project added!'} = 'Projekt hozzáadva!';
    $Self->{Translation}->{'Project updated!'} = 'Projekt frissítve!';
    $Self->{Translation}->{'Task added!'} = 'Feladat hozzáadva!';
    $Self->{Translation}->{'Task updated!'} = 'Feladat frissítve!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'A felhasználó-azonosító nem érvényes!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Nem lehet beilleszteni a felhasználóadatokat!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Nem lehet hozzáadni időszakot!';
    $Self->{Translation}->{'Setting'} = 'Beállítás';
    $Self->{Translation}->{'User updated!'} = 'Felhasználó frissítve!';
    $Self->{Translation}->{'User added!'} = 'Felhasználó hozzáadva!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Felhasználó hozzáadása az időelszámoláshoz…';
    $Self->{Translation}->{'New User'} = 'Új felhasználó';
    $Self->{Translation}->{'Period Status'} = 'Időszak állapot';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Nézet: %s szükséges!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Illessze be a munkaidejét!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Befejezetlen munkanapok';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Legalább egy napot válasszon ki!';
    $Self->{Translation}->{'Mass Entry'} = 'Tömeges bejegyzés';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Válassza ki a távollét okát!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Időelszámolás bejegyzés törlése';
    $Self->{Translation}->{'Confirm insert'} = 'Beillesztés megerősítése';

    # SysConfig
    $Self->{Translation}->{'A precentage value of the minimal translation progress per language, to be usable for documentations.'} =
        '';
    $Self->{Translation}->{'Access repos via http or https.'} = '';
    $Self->{Translation}->{'Autoloading of Znuny4OTRSRepo extensions.'} = '';
    $Self->{Translation}->{'Backend module registration for the config conflict check module.'} =
        '';
    $Self->{Translation}->{'Backend module registration for the file conflict check module.'} =
        '';
    $Self->{Translation}->{'Backend module registration for the function redefine check module.'} =
        '';
    $Self->{Translation}->{'Backend module registration for the manual set module.'} = '';
    $Self->{Translation}->{'Block hooks to be created for BS ad removal.'} = '';
    $Self->{Translation}->{'Block hooks to be created for package manager output filter.'} =
        '';
    $Self->{Translation}->{'Branch View commit limit'} = '';
    $Self->{Translation}->{'CodePolicy'} = '';
    $Self->{Translation}->{'Commit limit per page for Branch view screen'} = '';
    $Self->{Translation}->{'Create analysis file'} = '';
    $Self->{Translation}->{'Creates a analysis file from this ticket and sends to Znuny.'} =
        '';
    $Self->{Translation}->{'Creates a analysis file from this ticket.'} = '';
    $Self->{Translation}->{'Define private addon repos.'} = '';
    $Self->{Translation}->{'Defines the filter that processes the HTML templates.'} = '';
    $Self->{Translation}->{'Defines the test module for checking code policy.'} = '';
    $Self->{Translation}->{'Definition of GIT clone/push URL Prefix.'} = '';
    $Self->{Translation}->{'Definition of a Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRelease => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        '';
    $Self->{Translation}->{'Definition of a Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        '';
    $Self->{Translation}->{'Definition of external MD5 sums (key => MD5, Value => Vendor, PackageName, Version, Date).'} =
        '';
    $Self->{Translation}->{'Definition of mappings between public repository requests and internal OPMS repositories.'} =
        '';
    $Self->{Translation}->{'Definition of package states.'} = '';
    $Self->{Translation}->{'Definition of renamed OPMS packages.'} = '';
    $Self->{Translation}->{'Directory, which is used by Git to cache repositories.'} = '';
    $Self->{Translation}->{'Directory, which is used by Git to store temporary data.'} = '';
    $Self->{Translation}->{'Directory, which is used by Git to store working copies.'} = '';
    $Self->{Translation}->{'Disable online repositories.'} = '';
    $Self->{Translation}->{'Do not log git ssh connection authorization results for these users. Useful for automated stuff.'} =
        '';
    $Self->{Translation}->{'Dynamic Fields Screens'} = '';
    $Self->{Translation}->{'DynamicFieldScreen'} = '';
    $Self->{Translation}->{'Export all available public keys to authorized_keys file.'} = '';
    $Self->{Translation}->{'Export all relevant releases to ftp server.'} = '';
    $Self->{Translation}->{'Frontend module registration for the OPMS object in the agent interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSRepository object in the public interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSRepositoryLookup object in the public interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSTestBuild object in the public interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the PublicPackageVerification object in the public interface.'} =
        '';
    $Self->{Translation}->{'Frontend module registration for the admin interface.'} = '';
    $Self->{Translation}->{'GIT Author registration.'} = '';
    $Self->{Translation}->{'Generate HTML comment hooks for the specified blocks so that filters can use them.'} =
        '';
    $Self->{Translation}->{'Generate documentations once per night.'} = '';
    $Self->{Translation}->{'Git'} = '';
    $Self->{Translation}->{'Git Management'} = '';
    $Self->{Translation}->{'Git Repository'} = '';
    $Self->{Translation}->{'Group, whose members have delete admin permissions in OPMS.'} = '';
    $Self->{Translation}->{'Group, whose members have repository admin permissions in OPMS.'} =
        '';
    $Self->{Translation}->{'Group, whose members will see CI test result information in OPMS screens.'} =
        '';
    $Self->{Translation}->{'Groups an authenticated user (by user login and password) must be member of to build test packages via the public interface.'} =
        '';
    $Self->{Translation}->{'Groups which will be set during git project creation processes while adding OPMS repositories.'} =
        '';
    $Self->{Translation}->{'Manage dynamic field in screens.'} = '';
    $Self->{Translation}->{'Manage your public SSH key(s) for Git access here. Make sure to save this preference when you add a new key.'} =
        '';
    $Self->{Translation}->{'Module to generate statistics about the added code lines.'} = '';
    $Self->{Translation}->{'Module to generate statistics about the growth of code.'} = '';
    $Self->{Translation}->{'Module to generate statistics about the number of git commits.'} =
        '';
    $Self->{Translation}->{'Module to generate statistics about the removed code lines.'} = '';
    $Self->{Translation}->{'OPMS'} = '';
    $Self->{Translation}->{'Only users who have rw permissions in one of these groups may access git.'} =
        '';
    $Self->{Translation}->{'Option to set a package compatibility manually.'} = '';
    $Self->{Translation}->{'Parameters for the pages in the BranchView screen.'} = '';
    $Self->{Translation}->{'Pre-Definition of the \'GITProjectName\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        '';
    $Self->{Translation}->{'Pre-Definition of the \'GITRepositoryName\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        '';
    $Self->{Translation}->{'Pre-Definition of the \'PackageDeprecated\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        '';
    $Self->{Translation}->{'Recipients that will be informed by email in case of errors.'} =
        '';
    $Self->{Translation}->{'SSH Keys for Git Access'} = '';
    $Self->{Translation}->{'Send analysis file'} = '';
    $Self->{Translation}->{'Sets the git clone address to be used in repository listings.'} =
        '';
    $Self->{Translation}->{'Sets the home directory for git repositories.'} = '';
    $Self->{Translation}->{'Sets the path for the BugzillaAddComment post receive script location.'} =
        '';
    $Self->{Translation}->{'Sets the path for the OTRSCodePolicy  script location. It is recommended to have a separate clone of the OTRSCodePolicy module that is updated via cron.'} =
        '';
    $Self->{Translation}->{'Sets the path for the OTRSCodePolicy pre receive script location. It is recommended to have a separate clone of the OTRSCodePolicy module that is updated via cron.'} =
        '';
    $Self->{Translation}->{'Show latest commits in git repositories.'} = '';
    $Self->{Translation}->{'Shows a link in the menu to go create a unit test from the current ticket.'} =
        '';
    $Self->{Translation}->{'Synchronize OPMS tables with a remote database.'} = '';
    $Self->{Translation}->{'The minimum version of the sphinx library.'} = '';
    $Self->{Translation}->{'The name of the sphinx theme to be used.'} = '';
    $Self->{Translation}->{'The path to the OTRS CSS file (relative below the static path).'} =
        '';
    $Self->{Translation}->{'The path to the OTRS logo (relative below the static path).'} = '';
    $Self->{Translation}->{'The path to the static folder, containing images and css files.'} =
        '';
    $Self->{Translation}->{'The path to the theme folder, containing the sphinx themes.'} = '';
    $Self->{Translation}->{'This configuration defines all possible screens to enable or disable default columns.'} =
        '';
    $Self->{Translation}->{'This configuration defines all possible screens to enable or disable dynamic fields.'} =
        '';
    $Self->{Translation}->{'This configuration defines if only valids or all (invalids) dynamic fields should be shown.'} =
        '';
    $Self->{Translation}->{'This configuration defines if the OTRS package verification should be active or disabled. If disabled all packages are shown as verified. It\'s still recommended to use only verified packages.'} =
        '';
    $Self->{Translation}->{'This configuration defines the URL to the OTRS CloudService Proxy service. The http or https prefix will be added, depending on selection SysConfig \'Znuny4OTRSRepoType\'.'} =
        '';
    $Self->{Translation}->{'This configuration registers a Output post-filter to extend package verification.'} =
        '';
    $Self->{Translation}->{'This configuration registers an OutputFilter module that removes OTRS Business Solution TM advertisements.'} =
        '';
    $Self->{Translation}->{'This configuration registers an output filter to hide online repository selection in package manager.'} =
        '';
    $Self->{Translation}->{'Tidy unprocessed release that not passed test pomules checks for a long time.'} =
        '';
    $Self->{Translation}->{'Users who have rw permissions in one of these groups are permitted to execute force pushes \'git push --force\'.'} =
        '';
    $Self->{Translation}->{'Users who have rw permissions in one of these groups are permitted to manage projects. Additionally the members have administration permissions to the git management.'} =
        '';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Confirm insert',
    'Delete Time Accounting Entry',
    'Mass Entry',
    'No',
    'Please choose a reason for absence!',
    'Please choose at least one day!',
    'Submit',
    'Yes',
    );

}

1;
