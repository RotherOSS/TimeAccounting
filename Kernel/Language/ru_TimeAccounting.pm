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

package Kernel::Language::ru_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Вы действительно желаете удалить учтенные затраты времени для этого дня?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Редактировать запись времени';
    $Self->{Translation}->{'Go to settings'} = 'Перейти к настройкам';
    $Self->{Translation}->{'Date Navigation'} = 'Навигация по времени';
    $Self->{Translation}->{'Days without entries'} = 'Дни без записей';
    $Self->{Translation}->{'Select all days'} = 'Выбрать все дни';
    $Self->{Translation}->{'Mass entry'} = 'Массовый ввод';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Выберите причину вашего отсутствия в выбранные дни';
    $Self->{Translation}->{'On vacation'} = 'В отпуске';
    $Self->{Translation}->{'On sick leave'} = 'По болезни';
    $Self->{Translation}->{'On overtime leave'} = 'В отгуле за переработку';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Обязательные поля помечены "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Необходимо заполнить время начала и окончания или период времени.';
    $Self->{Translation}->{'Project'} = 'Планирование';
    $Self->{Translation}->{'Task'} = 'Задача';
    $Self->{Translation}->{'Remark'} = 'Примечание';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Примечание должно быть не менее 8 символов.';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Отрицательное значение недопустимо.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Не допускается повторение. Время начала соответствует другому интервалу.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Неверный формат! Введите время в формате HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = 'Только 24:00 разрешено в качестве времени окончания.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Неверное время! В сутках только 24 часа.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Время окончания должно быть позже времени начала.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Не допускается повторение. Время окончания соответствует другому интервалу.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Неверный период! В сутках только 24 часа.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Правильный период должен быть больше нуля.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Неверный период! Отрицательное значение не допускается.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Добавить одну строку';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'У вас есть возможность выбрать только один элемент!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Вы действительно работали в период болезни?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Вы действительно работали в период отпуска?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Вы действительно работали в период отгулов?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Вы действительно работали более 16 часов?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Месячный отчет о затраченном времени';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Переработка (часы)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Переработка (этого месяца)';
    $Self->{Translation}->{'Overtime (total)'} = 'Переработка (всего)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Оставшееся время отгула';
    $Self->{Translation}->{'Vacation (Days)'} = 'Отпуск (дни)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Использованные дни отпуска (в этом месяце)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Использованные дни отпуска (всего)';
    $Self->{Translation}->{'Remaining vacation'} = 'Оставшиеся дни отпуска';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Болезнь (дни)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Отсутствовал по болезни (в этом месяце)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Отсутствовал по болезни (всего)';
    $Self->{Translation}->{'Previous month'} = 'Предыдущий месяц';
    $Self->{Translation}->{'Next month'} = 'Следующий месяц';
    $Self->{Translation}->{'Weekday'} = 'Неделя';
    $Self->{Translation}->{'Working Hours'} = 'Рабочие часы';
    $Self->{Translation}->{'Total worked hours'} = 'Всего отработанных часов';
    $Self->{Translation}->{'User\'s project overview'} = 'Обзор данных по планированию для пользователя';
    $Self->{Translation}->{'Hours (monthly)'} = 'Часы (ежемесячно)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Часы (за весь срок наблюдения)';
    $Self->{Translation}->{'Grand total'} = 'Всего';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Отчет о времени';
    $Self->{Translation}->{'Month Navigation'} = 'Навигация по месяцам';
    $Self->{Translation}->{'Go to date'} = 'Перейти к дате';
    $Self->{Translation}->{'User reports'} = 'Отчет о пользователе';
    $Self->{Translation}->{'Monthly total'} = 'Итого за месяц';
    $Self->{Translation}->{'Lifetime total'} = 'Итого за все время';
    $Self->{Translation}->{'Overtime leave'} = 'Отгулы за переработку';
    $Self->{Translation}->{'Vacation'} = 'Отпуск';
    $Self->{Translation}->{'Sick leave'} = 'Отсутствие по болезни';
    $Self->{Translation}->{'Vacation remaining'} = 'Осталось дней отпуска';
    $Self->{Translation}->{'Project reports'} = 'Отчеты по планированию';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Отчет по планированию';
    $Self->{Translation}->{'Go to reporting overview'} = 'Перейти к обзору отчетов';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'В настоящее время показаны только активные пользователи в этом проекте. Чтобы изменить это, пожалуйста, обновите настройки:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'В настоящее время показаны все пользователи в этом проекте. Чтобы изменить, пожалуйста, обновите настройки:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Редактировать настройки учета затраченного времени по проекту';
    $Self->{Translation}->{'Add project'} = 'Добавить планирование';
    $Self->{Translation}->{'Go to settings overview'} = 'Перейти к обзору настроек';
    $Self->{Translation}->{'Add Project'} = 'Добавить планирование';
    $Self->{Translation}->{'Edit Project Settings'} = 'Редактировать настройки планирования';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Уже есть проект с таким наименованием. Выберите другое.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Редактировать настройки учета затраченного времени';
    $Self->{Translation}->{'Add task'} = 'Добавить задачу';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Фильтр для проектов, задач или пользователей';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Периоды времени не могут быть удалены.';
    $Self->{Translation}->{'Project List'} = 'Список проектов';
    $Self->{Translation}->{'Task List'} = 'Список задач';
    $Self->{Translation}->{'Add Task'} = 'Добавить задачу';
    $Self->{Translation}->{'Edit Task Settings'} = 'Редактировать настройки задачи';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Уже есть задача с таким именем, Выберите другое.';
    $Self->{Translation}->{'User List'} = 'Список пользователей';
    $Self->{Translation}->{'User Settings'} = 'Пользовательские настройки';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'Пользователю разрешено просматривать время';
    $Self->{Translation}->{'Show Overtime'} = 'Показать переработку';
    $Self->{Translation}->{'User is allowed to create projects'} = 'Пользователю разрешено создавать проекты';
    $Self->{Translation}->{'Allow project creation'} = 'Разрешить создание проектов';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '';
    $Self->{Translation}->{'Allow time accounting skipping'} = '';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '';
    $Self->{Translation}->{'Time Spans'} = 'Промежутки времени';
    $Self->{Translation}->{'Period Begin'} = 'Начало периода';
    $Self->{Translation}->{'Period End'} = 'Конец периода';
    $Self->{Translation}->{'Days of Vacation'} = 'Дни отпуска';
    $Self->{Translation}->{'Hours per Week'} = 'Часов в неделе';
    $Self->{Translation}->{'Authorized Overtime'} = 'Разрешенная переработка';
    $Self->{Translation}->{'Start Date'} = 'Дата начала';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Введите правильную дату.';
    $Self->{Translation}->{'End Date'} = 'Дата окончания';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Время окончания периода должно быть позже времени его начала.';
    $Self->{Translation}->{'Leave Days'} = 'Осталось, дней';
    $Self->{Translation}->{'Weekly Hours'} = 'Часов в неделю';
    $Self->{Translation}->{'Overtime'} = 'Переработка/Сверхурочные';
    $Self->{Translation}->{'No time periods found.'} = 'Не заданы периоды времени.';
    $Self->{Translation}->{'Add time period'} = 'Добавить перид времени';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Посмотреть запись времени';
    $Self->{Translation}->{'View of '} = 'Просмотр';
    $Self->{Translation}->{'Previous day'} = 'Предыдущий день';
    $Self->{Translation}->{'Next day'} = 'Следующий день';
    $Self->{Translation}->{'No data found for this day.'} = 'Для этого дня данные не найдены.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Не удалось добавить рабочие единицы!';
    $Self->{Translation}->{'Last Projects'} = 'Последние проекты.';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Не удалось сохранить настройки, так как в сутках 24 часа!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Не удалось удалить рабочие единицы!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Эта дата вне диапазона, но вы еще не установили этот день, так что вам дается один(!) шанс для ее установки';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Неполные рабочие дни';
    $Self->{Translation}->{'Successful insert!'} = 'Данные занесены успешно!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Ошибка при вводе нескольких дат!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Данные для разных дат введены успешно!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Введенная дата неверна! Заменена на текущую!';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Не настроен временной период, или указанная дата находится за пределами определенных временных периодов.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Пожалуйста, свяжитесь с администратором временного учета, чтобы обновить ваши временные периоды!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Последние выбранные проекты';
    $Self->{Translation}->{'All Projects'} = 'Все проекты';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'ReportingProject: Требуется ProjectID';
    $Self->{Translation}->{'Reporting Project'} = 'Проект составления отчетов';
    $Self->{Translation}->{'Reporting'} = 'Составление отчетов';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Не удалось обновить настройки пользователя!';
    $Self->{Translation}->{'Project added!'} = 'Добавлено планирование!';
    $Self->{Translation}->{'Project updated!'} = 'Планирование обновлено!';
    $Self->{Translation}->{'Task added!'} = 'Задача добавлена!';
    $Self->{Translation}->{'Task updated!'} = 'Задача обновлена!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'Неверный UserID!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Не удалось вставить данные пользователя!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Не удалось добавить перид времени!';
    $Self->{Translation}->{'Setting'} = 'Параметр';
    $Self->{Translation}->{'User updated!'} = 'Пользователь обновлен!';
    $Self->{Translation}->{'User added!'} = 'Пользователь добавлен!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Добавить пользователя в учет времени ...';
    $Self->{Translation}->{'New User'} = 'Новый пользователь';
    $Self->{Translation}->{'Period Status'} = 'Статус периода';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'View: Требуется  %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Введите Ваши рабочие часы!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Неполные рабочие дни';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Выберите хотя бы один день!';
    $Self->{Translation}->{'Mass Entry'} = 'Массовый ввод';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Выберите причину отсутствия!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Удалить запись затраченного времени';
    $Self->{Translation}->{'Confirm insert'} = 'Подтвердите вставку';

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
