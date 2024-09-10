# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.io/
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
    $Self->{Translation}->{'Add a user to time accounting.'} = '';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Филтър за проекти, задачи или потребители';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Периодите не могат да бъдат изтрити.';
    $Self->{Translation}->{'Project List'} = 'Списък на проектите';
    $Self->{Translation}->{'Task List'} = 'Списък на задачите';
    $Self->{Translation}->{'Add Task'} = 'Добавяне на задача';
    $Self->{Translation}->{'Edit Task Settings'} = 'Редактиране на настройките на задачите';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Вече има задача с това име. Моля, изберете друго.';
    $Self->{Translation}->{'User List'} = 'Списък с потребители';
    $Self->{Translation}->{'User Settings'} = 'Потребителски настройки';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'Потребителят има право да вижда извънредните часове';
    $Self->{Translation}->{'Show Overtime'} = 'Показване на извънреден труд';
    $Self->{Translation}->{'User is allowed to create projects'} = 'Потребителят има право да създава проекти';
    $Self->{Translation}->{'Allow project creation'} = 'Разрешаване за създаването на проект';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'Потребителят има право да пропусне отчитането на времето';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Позволете пропускане отчитането на време';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Ако тази опция е избрана, отчитането на времето не е задължително за потребителя.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'Няма да има предупреждения за липсващи записи и няма да има принудително влизане.';
    $Self->{Translation}->{'Time Spans'} = 'Времеви интервали';
    $Self->{Translation}->{'Period Begin'} = 'Начало';
    $Self->{Translation}->{'Period End'} = 'Край';
    $Self->{Translation}->{'Days of Vacation'} = 'Дни от отпуска';
    $Self->{Translation}->{'Hours per Week'} = 'Часове през седмицата';
    $Self->{Translation}->{'Authorized Overtime'} = 'Оторизиран извънреден труд';
    $Self->{Translation}->{'Start Date'} = 'Дата за начало';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Моля въведете валидна дата.';
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
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Не могат да се вмъкнат работни единици!';
    $Self->{Translation}->{'Last Projects'} = 'Последни проекти';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Не могат да се запазят настройки, защото един ден има само 24 часа!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Не могат да се изтрият работни единици!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Тази дата е извън ограничението, но все още не сте вмъкнали този ден, така че получавате една (!) възможност да вмъкнете';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Непълни работни дни';
    $Self->{Translation}->{'Successful insert!'} = 'Успешно вмъкване!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Грешка при вмъкване на няколко дати!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Успешно вмъкнати записи за няколко дати!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Въведената дата е невалидна! Датата беше променена на днес.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Няма конфигуриран период от време или посочената дата е извън определените периоди от време.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Моля, свържете се с администратора за отчитане на времето, за да актуализирате вашите времеви периоди!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Последно избрани проекти';
    $Self->{Translation}->{'All Projects'} = 'Всички проекти';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'Отчитане на проект: Нуждаете се от ProjectID';
    $Self->{Translation}->{'Reporting Project'} = 'Проект за отчитане';
    $Self->{Translation}->{'Reporting'} = 'Отчетност';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Не може да се актуализират потребителските настройки!';
    $Self->{Translation}->{'Project added!'} = 'Проектът е добавен!';
    $Self->{Translation}->{'Project updated!'} = 'Проектът е актуализиран!';
    $Self->{Translation}->{'Task added!'} = 'Задачата е добавена!';
    $Self->{Translation}->{'Task updated!'} = 'Задачата е актуализирана!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'UserID не е валиден!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Не мога да вмъкна потребителски данни!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Не може да се добави период от време!';
    $Self->{Translation}->{'Setting'} = 'Настройка';
    $Self->{Translation}->{'User updated!'} = 'Потребителят е актуализиран!';
    $Self->{Translation}->{'User added!'} = 'Потребителят е добавен!';
    $Self->{Translation}->{'New User'} = 'Нов потребител';
    $Self->{Translation}->{'Period Status'} = 'Състояние на период';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Изглед: Нуждаете се от %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Моля, въведете вашето работно време!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Непълни работни дни';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Моля, изберете поне един ден!';
    $Self->{Translation}->{'Mass Entry'} = 'Масово вписване';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Моля, изберете причина за отсъствие!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Изтриване на времето за вписване в счетоводството';
    $Self->{Translation}->{'Confirm insert'} = 'Потвърдете';

    # SysConfig
    $Self->{Translation}->{'Activate the synchronisation of Ticket-TimeUnits into the TimeAccounting module.'} =
        '';
    $Self->{Translation}->{'Agent interface notification module to see the number of incomplete working days for the user.'} =
        'Модул за уведомяване, за показване на броя незавършени работни дни на потребителя в интерфейса на агента.';
    $Self->{Translation}->{'Also synchronise customers as a new project if they have not yet been created in the customer database.'} =
        '';
    $Self->{Translation}->{'As soon as the synchronisation of ticket TimeUnits is activated, it is possible to set the entries ReadOnly.'} =
        '';
    $Self->{Translation}->{'Default name for new actions.'} = 'Име по подразбиране за нови действия.';
    $Self->{Translation}->{'Default name for new projects.'} = 'Име по подразбиране за нови проекти.';
    $Self->{Translation}->{'Default setting for date end.'} = 'Настройка по подразбиране за крайна дата.';
    $Self->{Translation}->{'Default setting for date start.'} = 'Настройка по подразбиране за начална дата.';
    $Self->{Translation}->{'Default setting for description.'} = 'Настройка по подразбиране за описание.';
    $Self->{Translation}->{'Default setting for leave days.'} = 'Настройка по подразбиране за дни отпуск.';
    $Self->{Translation}->{'Default setting for overtime.'} = 'Настройка по подразбиране за извънреден труд.';
    $Self->{Translation}->{'Default setting for the standard weekly hours.'} = 'Настройка по подразбиране за стандартните седмични часове.';
    $Self->{Translation}->{'Default status for new actions.'} = 'Състояние по подразбиране за нови действия.';
    $Self->{Translation}->{'Default status for new projects.'} = 'Състояние по подразбиране за нови проекти.';
    $Self->{Translation}->{'Default status for new users.'} = 'Състояние по подразбиране за нови потребители.';
    $Self->{Translation}->{'Defines the projects for which a remark is required. If the RegExp matches on the project, you have to insert a remark too. The RegExp use the smx parameter.'} =
        'Определя проектите, за които е необходима забележка. Ако RegExp съвпада с проекта, трябва да вмъкнете и забележка. RegExp използва smx параметъра.';
    $Self->{Translation}->{'Determines if the statistics module may generate time accounting information.'} =
        'Определя дали статистическият модул може да генерира информация за отчитане на времето.';
    $Self->{Translation}->{'Edit time accounting settings.'} = 'Редактирайте настройките за отчитане на времето.';
    $Self->{Translation}->{'Edit time record.'} = 'Редактиране на запис за време.';
    $Self->{Translation}->{'Every time a agent add TimeUnits to a ticket, we sync the information to the timeaccounting module.'} =
        '';
    $Self->{Translation}->{'For how many days ago you can insert working units.'} = 'За колко дни назад можете да вмъкнете работни единици.';
    $Self->{Translation}->{'If enabled, only users that has added working time to the selected project are shown.'} =
        'Ако е разрешено, се показват само потребители, които са добавили работно време към избрания проект.';
    $Self->{Translation}->{'If enabled, the dropdown elements in the edit screen are changed to modernized autocompletion fields.'} =
        'Ако е разрешено, падащите елементи в екрана за редактиране се променят на модернизирани полета за автоматично довършване.';
    $Self->{Translation}->{'If enabled, the filter for the previous projects can be used instead two list of projects (last and all ones). It could be used only if TimeAccounting::EnableAutoCompletion is enabled.'} =
        'Ако е активиран, филтърът за предишните проекти може да се използва вместо два списъка с проекти (последен и всички). Може да се използва само ако TimeAccounting::EnableAutoCompletion е активиран.';
    $Self->{Translation}->{'If enabled, the filter for the previous projects is active by default if there are the previous projects. It could be used only if EnableAutoCompletion and TimeAccounting::UseFilter are enabled.'} =
        'Ако е активиран, филтърът за предишните проекти е активен по подразбиране, ако има предишни проекти. Може да се използва само ако EnableAutoCompletion и TimeAccounting::UseFilter са активирани.';
    $Self->{Translation}->{'If enabled, the user is allowed to enter "on vacation leave", "on sick leave" and "on overtime leave" to multiple dates at once.'} =
        'Ако е разрешено, на потребителя е позволено да въвежда „в отпуск във ваканция“, „в отпуск по болест“ и „в отпуск за извънреден труд“ за няколко дати наведнъж.';
    $Self->{Translation}->{'Maximum number of working days after which the working units have to be inserted.'} =
        'Максимален брой работни дни, след които работните единици трябва да бъдат въведени.';
    $Self->{Translation}->{'Maximum number of working days without working units entry after which a warning will be shown.'} =
        'Максимален брой работни дни без въвеждане на работни единици, след което ще се показва предупреждение.';
    $Self->{Translation}->{'Overview.'} = 'Преглед.';
    $Self->{Translation}->{'Project time reporting.'} = 'Отчитане на времето по проекта.';
    $Self->{Translation}->{'Regular expressions for constraining action list according to selected project. Key contains regular expression for project(s), content contains regular expressions for action(s).'} =
        'Регулярни изрази за ограничаване на списъка с действия според избрания проект. Ключът съдържа регулярен израз за проект(и), съдържанието съдържа регулярни изрази за действие(я).';
    $Self->{Translation}->{'Regular expressions for constraining project list according to user groups. Key contains regular expression for project(s), content contains comma separated list of groups.'} =
        'Регулярни изрази за ограничаване на списъка с проекти според потребителски групи. Ключът съдържа регулярен израз за проект(и), съдържанието съдържа разделен със запетаи списък от групи.';
    $Self->{Translation}->{'Specifies if working hours can be inserted without start and end times.'} =
        'Указва дали работните часове могат да бъдат вмъкнати без начален и краен час.';
    $Self->{Translation}->{'Synchronise customers as a new project if they exists in the customer database.'} =
        '';
    $Self->{Translation}->{'This module forces inserts in TimeAccounting.'} = 'Този модул ускорява вмъквания в TimeAccounting.';
    $Self->{Translation}->{'This notification module gives a warning if there are too many incomplete working days.'} =
        'Този модул за уведомяване дава предупреждение, ако има твърде много непълни работни дни.';
    $Self->{Translation}->{'Time Accounting'} = 'Отчитане на времето';
    $Self->{Translation}->{'Time accounting edit.'} = 'Редактиране отчитането на времето.';
    $Self->{Translation}->{'Time accounting overview.'} = 'Преглед на отчитането за времето.';
    $Self->{Translation}->{'Time accounting reporting.'} = 'Отчитане на времето.';
    $Self->{Translation}->{'Time accounting settings.'} = 'Настройки за отчитане на времето.';
    $Self->{Translation}->{'Time accounting view.'} = 'Изглед за отчитане на времето.';
    $Self->{Translation}->{'Time accounting.'} = 'Отчитане на времето.';
    $Self->{Translation}->{'To use if some actions reduced the working hours (for example, if only half of the traveling time is paid Key => traveling; Content => 50).'} =
        'Да се използва, ако някои действия са намалили работното време (например, ако се заплаща само половината от времето за пътуване Ключ => пътуване; Съдържание => 50).';
    $Self->{Translation}->{'Use Service as Action. Please add as key the timeacounting action and the service as value. RegEx are allowed.'} =
        '';
    $Self->{Translation}->{'We need to set a default action id when we sync TimeUnits to the TimeAccounting module.'} =
        '';
    $Self->{Translation}->{'We need to set a default project id when we sync TimeUnits to the TimeAccounting module.'} =
        '';
    $Self->{Translation}->{'We save the Article TimeUnit to a DynamicField from type "Article". Please add here the name of the field if the initinal name is changed.'} =
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
