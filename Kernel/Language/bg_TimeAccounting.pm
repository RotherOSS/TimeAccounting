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

package Kernel::Language::bg_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Наистина ли искате да изтриете счетоводството за време в този ден?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Редактиране на времевия запис';
    $Self->{Translation}->{'Go to settings'} = 'Отидете в настройките';
    $Self->{Translation}->{'Date Navigation'} = 'Дата за навигация';
    $Self->{Translation}->{'Days without entries'} = 'Дни без записи';
    $Self->{Translation}->{'Select all days'} = 'Избор на всички дни';
    $Self->{Translation}->{'Mass entry'} = 'Масово въвеждане';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Моля, изберете причината за Вашето отсъствие за избраните дни';
    $Self->{Translation}->{'On vacation'} = 'Ваканция';
    $Self->{Translation}->{'On sick leave'} = 'В отпуск по болест';
    $Self->{Translation}->{'On overtime leave'} = 'При извънреден отпуск';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Задължителните полета са маркирани с "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Трябва да въведете начално и крайно време или период от време.';
    $Self->{Translation}->{'Project'} = 'Проект';
    $Self->{Translation}->{'Task'} = 'Задача';
    $Self->{Translation}->{'Remark'} = 'Забележка';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Моля, добавете забележка с повече от 8 знака!';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Отрицателните времена не се допускат.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Не се допускат повторни часове. Началното време съвпада с друг интервал.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Невалиден формат! Моля, въведете час с формат ЧЧ: ММ.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 е разрешено само като крайно време.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Невалидно време! Един ден има 24 часа.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Крайното време трябва да е след началното време.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Не се допускат повторни часове. Крайното време съвпада с друг интервал.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Невалиден период! Един ден има 24 часа.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Валидният период трябва да е по-голям от нула.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Невалиден период! Отрицателните периоди не са разрешени.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Добави един ред';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Можете да изберете само един елемент от квадратчето за отметка!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Сигурни ли сте, че работите, докато сте в отпуск по болест?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Сигурни ли сте, че работите, докато бяхте на почивка?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Сигурни ли сте, че сте работили, докато бяхте на извънреден труд?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Сигурни ли сте, че сте работили повече от 16 часа?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Месечен преглед на времето за отчитане';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Извънреден труд (часове)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Извънрежим (този месец)';
    $Self->{Translation}->{'Overtime (total)'} = 'Извънреден труд (общо)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Оставащ отпуск';
    $Self->{Translation}->{'Vacation (Days)'} = 'Отпуска (дни)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Взета отпуска (този месец)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Взета отпуска (общо)';
    $Self->{Translation}->{'Remaining vacation'} = 'Оставаща отпука';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Отпуск по болест (дни)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Отпуснат е болничен (този месец)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Отпуснат боленичен (общо)';
    $Self->{Translation}->{'Previous month'} = 'Предния месец';
    $Self->{Translation}->{'Next month'} = 'Следващия месец';
    $Self->{Translation}->{'Weekday'} = 'Делничен';
    $Self->{Translation}->{'Working Hours'} = 'Работни часове';
    $Self->{Translation}->{'Total worked hours'} = 'Общо работно време';
    $Self->{Translation}->{'User\'s project overview'} = 'Преглед на проекта на потребителя';
    $Self->{Translation}->{'Hours (monthly)'} = 'Часове (месечно)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Часове (цял живот)';
    $Self->{Translation}->{'Grand total'} = 'Общо';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Отчитане на времето';
    $Self->{Translation}->{'Month Navigation'} = 'Месечна навигация';
    $Self->{Translation}->{'Go to date'} = 'Отидете на датата';
    $Self->{Translation}->{'User reports'} = 'Потребителски отчети';
    $Self->{Translation}->{'Monthly total'} = 'Общо за месеца';
    $Self->{Translation}->{'Lifetime total'} = 'Общо за целия период';
    $Self->{Translation}->{'Overtime leave'} = 'Отпуск за извънреден труд';
    $Self->{Translation}->{'Vacation'} = 'Отпуска';
    $Self->{Translation}->{'Sick leave'} = 'Отпуск по болест';
    $Self->{Translation}->{'Vacation remaining'} = 'Оставаща отпуска';
    $Self->{Translation}->{'Project reports'} = 'Доклади за проекта';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Доклад за проекта';
    $Self->{Translation}->{'Go to reporting overview'} = 'Отворете отчетния преглед';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'В момента се показват само активни потребители в този проект. За да промените това поведение, моля, актуализирайте настройката:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Понастоящем се показват всички потребители, отчитащи времето. За да промените това поведение, моля, актуализирайте настройката:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Редактиране на настройките на проект за счетоводно време';
    $Self->{Translation}->{'Add project'} = 'Добавяне на проект';
    $Self->{Translation}->{'Go to settings overview'} = 'Отидете в общ преглед на настройките';
    $Self->{Translation}->{'Add Project'} = 'Добавяне на проект';
    $Self->{Translation}->{'Edit Project Settings'} = 'Редактиране на настройките на проекта';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Вече има проект с това име. Моля, изберете друг.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Редактиране на настройките за счетоводно време';
    $Self->{Translation}->{'Add task'} = 'Добавяне на задача';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = '';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Периодите не могат да бъдат изтрити.';
    $Self->{Translation}->{'Project List'} = 'Списък на проектите';
    $Self->{Translation}->{'Task List'} = 'Списък на задачите';
    $Self->{Translation}->{'Add Task'} = 'Добавяне на задача';
    $Self->{Translation}->{'Edit Task Settings'} = 'Редактиране на настройките на задачите';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Вече има задача с това име. Моля, изберете друго.';
    $Self->{Translation}->{'User List'} = 'Списък с потребители';
    $Self->{Translation}->{'User Settings'} = '';
    $Self->{Translation}->{'User is allowed to see overtimes'} = '';
    $Self->{Translation}->{'Show Overtime'} = 'Показване на извънреден труд';
    $Self->{Translation}->{'User is allowed to create projects'} = '';
    $Self->{Translation}->{'Allow project creation'} = 'Разрешаване за създаването на проект';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '';
    $Self->{Translation}->{'Allow time accounting skipping'} = '';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '';
    $Self->{Translation}->{'Time Spans'} = '';
    $Self->{Translation}->{'Period Begin'} = 'Начало';
    $Self->{Translation}->{'Period End'} = 'Край';
    $Self->{Translation}->{'Days of Vacation'} = 'Дни от отпуска';
    $Self->{Translation}->{'Hours per Week'} = 'Часове през седмицата';
    $Self->{Translation}->{'Authorized Overtime'} = 'Оторизиран извънреден труд';
    $Self->{Translation}->{'Start Date'} = 'Дата за начало';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Моля въведете валидна дата';
    $Self->{Translation}->{'End Date'} = 'Дата за край';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Крайният период трябва да бъде след началото на периода.';
    $Self->{Translation}->{'Leave Days'} = 'Оставащи дни';
    $Self->{Translation}->{'Weekly Hours'} = 'Седмични часове';
    $Self->{Translation}->{'Overtime'} = 'Извънредно';
    $Self->{Translation}->{'No time periods found.'} = 'Няма намерени времеви периоди.';
    $Self->{Translation}->{'Add time period'} = 'Добавете период от време';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Преглед на времевия запис';
    $Self->{Translation}->{'View of '} = 'Преглед на';
    $Self->{Translation}->{'Previous day'} = 'Вчера';
    $Self->{Translation}->{'Next day'} = 'Утре';
    $Self->{Translation}->{'No data found for this day.'} = 'Няма данни за този ден.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '';
    $Self->{Translation}->{'Last Projects'} = '';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = '';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        '';
    $Self->{Translation}->{'Incomplete Working Days'} = '';
    $Self->{Translation}->{'Successful insert!'} = '';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = '';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = '';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = '';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '';
    $Self->{Translation}->{'Last Selected Projects'} = '';
    $Self->{Translation}->{'All Projects'} = '';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = '';
    $Self->{Translation}->{'Reporting Project'} = '';
    $Self->{Translation}->{'Reporting'} = 'Отчетност';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = '';
    $Self->{Translation}->{'Project added!'} = '';
    $Self->{Translation}->{'Project updated!'} = '';
    $Self->{Translation}->{'Task added!'} = '';
    $Self->{Translation}->{'Task updated!'} = '';
    $Self->{Translation}->{'The UserID is not valid!'} = '';
    $Self->{Translation}->{'Can\'t insert user data!'} = '';
    $Self->{Translation}->{'Unable to add time period!'} = '';
    $Self->{Translation}->{'Setting'} = 'Настройка';
    $Self->{Translation}->{'User updated!'} = '';
    $Self->{Translation}->{'User added!'} = '';
    $Self->{Translation}->{'Add a user to time accounting...'} = '';
    $Self->{Translation}->{'New User'} = '';
    $Self->{Translation}->{'Period Status'} = '';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = '';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = '';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = '';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Моля, изберете поне един ден!';
    $Self->{Translation}->{'Mass Entry'} = 'Масово вписване';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Моля, изберете причина за отсъствие!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Изтриване на времето за вписване в счетоводството';
    $Self->{Translation}->{'Confirm insert'} = 'Потвърдете';

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
