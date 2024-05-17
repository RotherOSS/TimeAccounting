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

package Kernel::Language::pl_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Czy na pewno chcesz usunąć rozliczenie czasu pracy tego dnia?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Edycja ewidencji czasu pracy';
    $Self->{Translation}->{'Go to settings'} = 'Przejdź do ustawień';
    $Self->{Translation}->{'Date Navigation'} = 'Nawigacja po dacie';
    $Self->{Translation}->{'Days without entries'} = 'Dni bez wpisów';
    $Self->{Translation}->{'Select all days'} = 'Zaznacz wszystkie dni';
    $Self->{Translation}->{'Mass entry'} = 'Masowe wpisywanie';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Proszę wybrać przyczynę nieobecności dla wybranych dni';
    $Self->{Translation}->{'On vacation'} = 'Urlop';
    $Self->{Translation}->{'On sick leave'} = 'Zwolnienie lekarskie';
    $Self->{Translation}->{'On overtime leave'} = 'Wolne za godziny nadliczbowe';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Pola wymagane oznaczone są "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Musisz wprowadzić czas początku i zakończenia lub określ czas trwania cylku.';
    $Self->{Translation}->{'Project'} = 'Projekt';
    $Self->{Translation}->{'Task'} = 'Zadanie';
    $Self->{Translation}->{'Remark'} = 'Uwaga';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Proszę dodać uwagę zawierającą więcej niż 8 znaków!';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Ujemne czasy są niedozwolone.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Pokrywające się godziny nie są dozwolone. Czas rozpoczęcia pasuje do innego przedziału.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Nieprawidłowy format! Proszę podać czas w formacie GG:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 jest dozwolona jedynie jako czas zakończenia.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Nieprawidłowy czas! Dzień ma tylko 24 godziny.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Czas zakończenia musi być po czasie rozpoczęcia.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Pokrywające się godziny nie są dozwolone. Czas zakończenia pasuje do innego przedziału.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Nieprawidłowy czas cyklu! Dzień ma tylko 24 godziny.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Prawidłowy czas cyklu musi być większy od zera.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Nieprawidłowy cykl! Ujemny czas cyklu nie jest dozwolony.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Dodaj wiersz';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Możesz zaznaczyć tylko jeden element!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Czy jesteś pewien, że pracowałeś w trakcie zwolnienia lekarskiego?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Czy jesteś pewien, że pracowałeś w trakcie urlopu?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Czy jesteś pewien, że pracowałeś w trakcie wolnego za nadgodziny?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Czy jesteś pewien, że pracowałeś więcej niż 16 godzin?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Miesięczny raport czasu pracy';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Godziny nadliczbowe';
    $Self->{Translation}->{'Overtime (this month)'} = 'Godziny nadliczbowe (bieżący miesiąc)';
    $Self->{Translation}->{'Overtime (total)'} = 'Godziny nadliczbowe (łącznie)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Pozostałe godziny nadliczbowe do wybrania';
    $Self->{Translation}->{'Vacation (Days)'} = 'Urlop (dni)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Wykorzystany urlop (bieżący miesiąc)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Wykorzystany urlop (łącznie)';
    $Self->{Translation}->{'Remaining vacation'} = 'Urlop pozostały do wykorzystania';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Zwolnienie lekarskie (dni)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Dni zwolnienia lekarskiego (bieżący miesiąc)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Dni zwolnienia lekarskiego (łącznie)';
    $Self->{Translation}->{'Previous month'} = 'Poprzedni miesiąc';
    $Self->{Translation}->{'Next month'} = 'Następny miesiąc';
    $Self->{Translation}->{'Weekday'} = 'Dzień roboczy';
    $Self->{Translation}->{'Working Hours'} = 'Godziny pracy';
    $Self->{Translation}->{'Total worked hours'} = 'Łączna ilość przepracowanych godzin';
    $Self->{Translation}->{'User\'s project overview'} = 'Opis projektu użytkownika';
    $Self->{Translation}->{'Hours (monthly)'} = 'Godziny (miesięcznie)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Godziny (łącznie)';
    $Self->{Translation}->{'Grand total'} = 'Ogółem';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Raortowanie czasu';
    $Self->{Translation}->{'Month Navigation'} = 'Nawigacja miesięczna';
    $Self->{Translation}->{'Go to date'} = 'Przejdź do daty';
    $Self->{Translation}->{'User reports'} = 'Raporty użytkownika';
    $Self->{Translation}->{'Monthly total'} = 'Łącznie - miesięcznie';
    $Self->{Translation}->{'Lifetime total'} = 'Łącznie - ogółem';
    $Self->{Translation}->{'Overtime leave'} = 'Wolne za godziny nadliczbowe';
    $Self->{Translation}->{'Vacation'} = 'Urlop';
    $Self->{Translation}->{'Sick leave'} = 'Zwolnienie lekarskie';
    $Self->{Translation}->{'Vacation remaining'} = 'Urlop pozostały do wykorzystania';
    $Self->{Translation}->{'Project reports'} = 'Raporty projektu';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Raport projektu';
    $Self->{Translation}->{'Go to reporting overview'} = 'Przejdź do przeglądu raportowania';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Aktualnie widoczni są jedynie użytkownicy z tego projektu. Tutaj można to zmienić:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Aktualnie widoczni są wszyscy użytkownicy rozliczający czas pracy. Tutaj można to zmienić:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Edytuj ustawienia rozliczania czasu pracy w projekcie';
    $Self->{Translation}->{'Add project'} = 'Dodaj projekt';
    $Self->{Translation}->{'Go to settings overview'} = 'Przejdź do opisu ustawień';
    $Self->{Translation}->{'Add Project'} = 'Dodaj projekt';
    $Self->{Translation}->{'Edit Project Settings'} = 'Edytuj ustawienia projektu';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Inny projekt używa już tej nazwy. Użyj innej nazwy.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Edytuj ustawienia rozliczania czasu pracy';
    $Self->{Translation}->{'Add task'} = 'Dodaj zadanie';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Filtruj projekty, zadania lub użytkowników';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Cykle czasu nie mogą zostać usunięte.';
    $Self->{Translation}->{'Project List'} = 'Lista projektów';
    $Self->{Translation}->{'Task List'} = 'Lista zadań';
    $Self->{Translation}->{'Add Task'} = 'Dodaj zadanie';
    $Self->{Translation}->{'Edit Task Settings'} = 'Edytuj ustawienia zadania';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Inne zadanie używa już tej nazwy. Użyj innej nazwy.';
    $Self->{Translation}->{'User List'} = 'Lista Użytkowników';
    $Self->{Translation}->{'User Settings'} = 'Ustawienia Użytkownika';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'Użytkownik może zobaczyć nadgodziny';
    $Self->{Translation}->{'Show Overtime'} = 'Pokaż godziny nadliczbowe';
    $Self->{Translation}->{'User is allowed to create projects'} = 'Użytkownik może tworzyć projekty';
    $Self->{Translation}->{'Allow project creation'} = 'Zezwalaj na tworzenie projektów';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'Użytkownik może pominąć rozliczanie czasu pracy';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Pozwól na ominięcie rozliczania czasu pracy';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Jeśli ta opcja jest zaznaczona, rozliczanie czasu pracy jest nieobowiązkowe dla użytkownika.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'Nie będzie ostrzeżeń o brakujących jednostkach czasu oraz wymuszania wpisów.';
    $Self->{Translation}->{'Time Spans'} = 'Okresy Czasu';
    $Self->{Translation}->{'Period Begin'} = 'Początek cyklu';
    $Self->{Translation}->{'Period End'} = 'Koniec cyklu';
    $Self->{Translation}->{'Days of Vacation'} = 'Dni urlopu';
    $Self->{Translation}->{'Hours per Week'} = 'Ilość godzin w tygodniu';
    $Self->{Translation}->{'Authorized Overtime'} = 'Zezwól na godziny nadliczbowe';
    $Self->{Translation}->{'Start Date'} = 'Data rozpoczęcia';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Proszę wprowadzić prawidłową datę.';
    $Self->{Translation}->{'End Date'} = 'Data zakończenia';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Koniec okresu musi być po jego początku.';
    $Self->{Translation}->{'Leave Days'} = 'Dni opuczone';
    $Self->{Translation}->{'Weekly Hours'} = 'Tygodniowy czas pracy';
    $Self->{Translation}->{'Overtime'} = 'Godziny nadliczbowe';
    $Self->{Translation}->{'No time periods found.'} = 'Nie znaleziono żadnego cyklu.';
    $Self->{Translation}->{'Add time period'} = 'Dodaj cykl';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Pokaż ewidencję czasu pracy';
    $Self->{Translation}->{'View of '} = 'Widok ';
    $Self->{Translation}->{'Previous day'} = 'Poprzedni dzień';
    $Self->{Translation}->{'Next day'} = 'Kolejny dzień';
    $Self->{Translation}->{'No data found for this day.'} = 'Brak danych dotyczących wybranego dnia.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Nie udało się wstawić jednostek pracy!';
    $Self->{Translation}->{'Last Projects'} = 'Ostatnie projekty';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Nie można zapisać ustawień, ponieważ doba ma tylko 24 godziny!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Nie udało się usunąć jednostek pracy!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Wprowadzona data jest poza zakresem, ale nie wprowadziłeś jeszcze tego dnia, masz więc jedyną(!) okazję';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Niepełne dni pracy';
    $Self->{Translation}->{'Successful insert!'} = 'Wprowadanie powiodło się!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Wystąpił błąd podczas wprowadzania wielu dat jednocześnie!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Pomyślnie wprowadzono wiele dat jednocześnie!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Wprowadzono nieprawidłową datę! Została ona zmieniona na bieżącą.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Nie skonfigurowano okresów czasu lub podana data leży poza zdefiniowanymi okresami.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Skontaktuj się z administratorem czasu pracy w celu aktualizacji twoich okresów pracy!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Ostatnio wybrane projekty';
    $Self->{Translation}->{'All Projects'} = 'Wszystkie projekty';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'Raportowanie projektu: Wymagany ProjectID';
    $Self->{Translation}->{'Reporting Project'} = 'Raportowanie projektu';
    $Self->{Translation}->{'Reporting'} = 'Raportowanie';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Nie można zmienić ustawień użytkownika!';
    $Self->{Translation}->{'Project added!'} = 'Projekt dodany!';
    $Self->{Translation}->{'Project updated!'} = 'Projekt zmieniony!';
    $Self->{Translation}->{'Task added!'} = 'Zadanie dodane!';
    $Self->{Translation}->{'Task updated!'} = 'Zadanie zmienione!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'Identyfikator UserID jest nieprawidłowy!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Nie udało się wstawić danych użytkownika!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Nie można dodać cyklu!';
    $Self->{Translation}->{'Setting'} = 'Ustawienie';
    $Self->{Translation}->{'User updated!'} = 'Użytkownik zmieniony!';
    $Self->{Translation}->{'User added!'} = 'Użytkownik dodany!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Dodaj użytkownika do rozliczania czasu pracy...';
    $Self->{Translation}->{'New User'} = 'Nowy Użytkownik';
    $Self->{Translation}->{'Period Status'} = 'Stan cyklu';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Widok: Potrzebny %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Proszę wprowadzić swój czas pracy!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Niepełne dni pracy';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Proszę wybrać co najmniej jeden dzień!';
    $Self->{Translation}->{'Mass Entry'} = 'Masowe wpisywanie';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Proszę wybrać przyczynę nieobecności!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Usuń rozliczenie czasu pracy';
    $Self->{Translation}->{'Confirm insert'} = 'Potwierdź wpis';

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
