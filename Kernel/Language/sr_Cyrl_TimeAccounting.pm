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

package Kernel::Language::sr_Cyrl_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Да ли заиста желите да обришете обрачун времена за овај дан?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Уреди временски запис';
    $Self->{Translation}->{'Go to settings'} = 'Иди у подешавања';
    $Self->{Translation}->{'Date Navigation'} = 'Датумска навигација';
    $Self->{Translation}->{'Days without entries'} = 'Дани без уноса';
    $Self->{Translation}->{'Select all days'} = 'Селектуј све дане';
    $Self->{Translation}->{'Mass entry'} = 'Масовни унос';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Молимо Вас изаберите разлог вашег одсуства за изабране дане';
    $Self->{Translation}->{'On vacation'} = 'На одмору';
    $Self->{Translation}->{'On sick leave'} = 'На боловању';
    $Self->{Translation}->{'On overtime leave'} = 'На слободним данима';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Обавезна поља су означена са "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Морате унети време почетка и завршетка или временски период.';
    $Self->{Translation}->{'Project'} = 'Пројекат';
    $Self->{Translation}->{'Task'} = 'Задатак';
    $Self->{Translation}->{'Remark'} = 'Напомена';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Молимо да додате напомену дужу од 8 карактера!';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Негативна времена нису дозвољена.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Понављање сати није дозвољено. Време почетка се поклапа са другим интервалом.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Неисправан формат! Молимо да унесете време у формату HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 је дозвољено само као време завршетка.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Неисправно време! Дан има само 24 сата.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Време завршетка мора бити након почетка.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Понављање сати није дозвољено. Време завршетка се поклапа са другим интервалом.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Неисправан период! Дан има само 24 сата.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Исправан период мора бити већи од нуле.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Неисправан период! Негативни периоди нису дозвољени.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Додај један ред';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Можете изабрати само једно поље за потврду.';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Да ли сте сигурни да сте радили док сте били на боловању?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Да ли сте сигурни да сте радили док сте били на одмору?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Да ли сте сигурни да сте радили док сте били на слободним данима?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Да ли сте сигурни да сте радили више од 16 сати?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Преглед месечног обрачуна времена';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Прековремено (сати)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Прековремено (овај месец)';
    $Self->{Translation}->{'Overtime (total)'} = 'Прековремено (укупно)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Преостали слободни дани';
    $Self->{Translation}->{'Vacation (Days)'} = 'Одмор (дани)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Искоришћен одмор (овај месец)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Искоришћен одмор (укупно)';
    $Self->{Translation}->{'Remaining vacation'} = 'Преостао одмор';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Боловање (дани)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Боловање (овај месец)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Боловање (укупно)';
    $Self->{Translation}->{'Previous month'} = 'Претходни месец';
    $Self->{Translation}->{'Next month'} = 'Следећи месец';
    $Self->{Translation}->{'Weekday'} = 'Радни дан';
    $Self->{Translation}->{'Working Hours'} = 'Радни сати';
    $Self->{Translation}->{'Total worked hours'} = 'Укупно радних сати';
    $Self->{Translation}->{'User\'s project overview'} = 'Преглед корисничког пројекта';
    $Self->{Translation}->{'Hours (monthly)'} = 'Сати (месечно)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Сати (укупно)';
    $Self->{Translation}->{'Grand total'} = 'Укупан збир';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Извештавање о времену';
    $Self->{Translation}->{'Month Navigation'} = 'Навигација по месецима';
    $Self->{Translation}->{'Go to date'} = 'Иди на датум';
    $Self->{Translation}->{'User reports'} = 'Кориснички извештаји';
    $Self->{Translation}->{'Monthly total'} = 'Месечни збир';
    $Self->{Translation}->{'Lifetime total'} = 'Свега до сада';
    $Self->{Translation}->{'Overtime leave'} = 'Слободни дани';
    $Self->{Translation}->{'Vacation'} = 'Одмор';
    $Self->{Translation}->{'Sick leave'} = 'Боловање';
    $Self->{Translation}->{'Vacation remaining'} = 'Преостао одмор';
    $Self->{Translation}->{'Project reports'} = 'Извештаји о пројекту';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Извештај о пројекту';
    $Self->{Translation}->{'Go to reporting overview'} = 'Иди на преглед извештавања';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Тренутно су приказани само активни корисници у овом пројекту. За промену оваквог понашања, молимо Вас ажурирајте подешавања:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Тренутно су приказани сви корисници обрачуна времена. За промену оваквог понашања, молимо ажурирајте подешавања:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Измена подешавања обрачунавања времена пројекта';
    $Self->{Translation}->{'Add project'} = 'Додај пројекат';
    $Self->{Translation}->{'Go to settings overview'} = 'Иди на преглед подешавања';
    $Self->{Translation}->{'Add Project'} = 'Додај Пројекат';
    $Self->{Translation}->{'Edit Project Settings'} = 'Измени подешавања Пројекта';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Већ постоји пројекат са тим именом. Молимо вас, изаберите неко друго.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Измени подешавања обрачунавања времена';
    $Self->{Translation}->{'Add task'} = 'Додај задатак';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Филтер за пројекте, задатке или кориснике';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Временски периоди се не могу обрисати.';
    $Self->{Translation}->{'Project List'} = 'Листа пројеката';
    $Self->{Translation}->{'Task List'} = 'Листа задатака';
    $Self->{Translation}->{'Add Task'} = 'Додај задатак';
    $Self->{Translation}->{'Edit Task Settings'} = 'Уреди подешавања задатка';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Већ постоји задатак са тим именом. Молимо вас, изаберите неко друго.';
    $Self->{Translation}->{'User List'} = 'Листа корисника';
    $Self->{Translation}->{'User Settings'} = 'Корисничка подешавања';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'Кориснику је омогућено да види прековремено';
    $Self->{Translation}->{'Show Overtime'} = 'Прикажи прековремено';
    $Self->{Translation}->{'User is allowed to create projects'} = 'Кориснику је омогућено да креира пројекте';
    $Self->{Translation}->{'Allow project creation'} = 'Дозволи креирање пројекта';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'Кориснику је омогућено да прескочи обрачунавање времена';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Дозволи прескакање обрачунавања времена';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Уколико је укључено, обрачунавање времена ће бити опционо за корисника.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'Упозорења о недостатку обрачуна времена и контрола приступа ће бити суспендовани.';
    $Self->{Translation}->{'Time Spans'} = 'Распони времена';
    $Self->{Translation}->{'Period Begin'} = 'Почетак периода';
    $Self->{Translation}->{'Period End'} = 'Крај периода';
    $Self->{Translation}->{'Days of Vacation'} = 'Дани одмора';
    $Self->{Translation}->{'Hours per Week'} = 'Сати по недељи';
    $Self->{Translation}->{'Authorized Overtime'} = 'Дозвољено прековремено';
    $Self->{Translation}->{'Start Date'} = 'Датум почетка';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Молимо да унесете важећи датум.';
    $Self->{Translation}->{'End Date'} = 'Датум завршетка';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Крај периода мора бити после почетка периода.';
    $Self->{Translation}->{'Leave Days'} = 'Дани одсуства';
    $Self->{Translation}->{'Weekly Hours'} = 'Седмични сати';
    $Self->{Translation}->{'Overtime'} = 'Прековремено';
    $Self->{Translation}->{'No time periods found.'} = 'Нису пронађени временски периоди.';
    $Self->{Translation}->{'Add time period'} = 'Додај временски период';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Приказ временског записа';
    $Self->{Translation}->{'View of '} = 'Приказ';
    $Self->{Translation}->{'Previous day'} = 'Претходни дан';
    $Self->{Translation}->{'Next day'} = 'Следећи дан';
    $Self->{Translation}->{'No data found for this day.'} = 'Нема података за овај дан.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Радне јединице се не могу унети!';
    $Self->{Translation}->{'Last Projects'} = 'Последњи пројекти';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Не могу да сачувам подешавања, јер дан има само 24 сата!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Радне јединице се не могу обрисати!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Овај датум је изван граница али га нисте још увек унели, па имате још једну(!) шансу за унос';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Непотпуни радни дани';
    $Self->{Translation}->{'Successful insert!'} = 'Успешно додавање!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Грешка при уносу више датума!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Успешно убачени уноси за више датума!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Унети датум је неважећи! Датум је промењен на данашњи.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Није конфигурисан временски период или је наведени датум ван дефинисаних временских периода.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Молимо да контактирате администратора обрачуна времена за ажурирање временских периода!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Последњи изабрани пројекти';
    $Self->{Translation}->{'All Projects'} = 'Сви пројекти';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'Извештавање о пројекту: неопходан је ProjectID';
    $Self->{Translation}->{'Reporting Project'} = 'Извештавање о пројекту';
    $Self->{Translation}->{'Reporting'} = 'Извештавање';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Корисничка подешавања се не могу ажурирати!';
    $Self->{Translation}->{'Project added!'} = 'Додат пројекат!';
    $Self->{Translation}->{'Project updated!'} = 'Ажуриран пројекат!';
    $Self->{Translation}->{'Task added!'} = 'Додат задатак!';
    $Self->{Translation}->{'Task updated!'} = 'Ажуриран задатак!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'UserID је неважећи!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Кориснички подаци се не могу унети!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Временски период се не може додати!';
    $Self->{Translation}->{'Setting'} = 'Подешавање';
    $Self->{Translation}->{'User updated!'} = 'Ажуриран корисник!';
    $Self->{Translation}->{'User added!'} = 'Додат корисник!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Додај корисника у обрачунавање времена...';
    $Self->{Translation}->{'New User'} = 'Нови корисник';
    $Self->{Translation}->{'Period Status'} = 'Статус периода';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Приказ: неопходан %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Молимо вас унесите ваше радно време!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Непотпуни радни дани';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Молимо вас изаберите бар један дан!';
    $Self->{Translation}->{'Mass Entry'} = 'Масовни унос';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Молимо вас изаберите разлог вашег одсуства!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Обриши ставку обрачуна времена';
    $Self->{Translation}->{'Confirm insert'} = 'Потврди унос';

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
    $Self->{Translation}->{'Branch View commit limit'} = 'Ограничење броја комитова у приказу гране';
    $Self->{Translation}->{'CodePolicy'} = '';
    $Self->{Translation}->{'Commit limit per page for Branch view screen'} = 'Ограничење броја комитова по страни у екрану приказа гране';
    $Self->{Translation}->{'Create analysis file'} = '';
    $Self->{Translation}->{'Creates a analysis file from this ticket and sends to Znuny.'} =
        '';
    $Self->{Translation}->{'Creates a analysis file from this ticket.'} = '';
    $Self->{Translation}->{'Define private addon repos.'} = '';
    $Self->{Translation}->{'Defines the filter that processes the HTML templates.'} = '';
    $Self->{Translation}->{'Defines the test module for checking code policy.'} = '';
    $Self->{Translation}->{'Definition of GIT clone/push URL Prefix.'} = 'Дефиниција адресног префикса за GIT клонирање и слање.';
    $Self->{Translation}->{'Definition of a Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRelease => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Дефиниција динамичког поља: Group => група за приступ динамичким пољима; AlwaysVisible => поље може бити уклоњено (0|1); InformationAreaName => наслов додатака; InformationAreaSize => величина и позиција додатака (Large|Small); Name => назив динамичког поља; Priority => редослед динамичких поља; State => статус поља (0 = онемогућено, 1 = омогућено, 2 = обавезно); FilterRepository => регуларни израз који назив складишта мора да задовољава да би поље било приказано; FilterPackage => регуларни израз које назив пакета мора да задовољава да би поље било приказано; FilterBranch => регуларни израз који назив гране мора да задовољава да би поље било приказано; FilterRelease => регуларни израз који верзија издања мора да задовољава да би поље било приказано.';
    $Self->{Translation}->{'Definition of a Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Дефиниција динамичког поља: Group => група за приступ динамичким пољима; AlwaysVisible => поље може бити уклоњено (0|1); InformationAreaName => наслов додатака; InformationAreaSize => величина и позиција додатака (Large|Small); Name => назив динамичког поља; Priority => редослед динамичких поља; State => статус поља (0 = онемогућено, 1 = омогућено, 2 = обавезно); FilterRepository => регуларни израз који назив складишта мора да задовољава да би поље било приказано; FilterPackage => регуларни израз које назив пакета мора да задовољава да би поље било приказано; FilterBranch => регуларни израз који назив гране мора да задовољава да би поље било приказано; FilterRelease => регуларни израз који верзија издања мора да задовољава да би поље било приказано.';
    $Self->{Translation}->{'Definition of external MD5 sums (key => MD5, Value => Vendor, PackageName, Version, Date).'} =
        'Дефиниција екстерних MD5 вредности (кључ => MD5, вредност => Vendor, PackageName, Version, Date).';
    $Self->{Translation}->{'Definition of mappings between public repository requests and internal OPMS repositories.'} =
        'Мапирање складишта у јавним захтевима са интерним OPMS складиштима.';
    $Self->{Translation}->{'Definition of package states.'} = 'Дефиниција стања пакета.';
    $Self->{Translation}->{'Definition of renamed OPMS packages.'} = 'Дефиниција OPMS пакета са промењеним именом.';
    $Self->{Translation}->{'Directory, which is used by Git to cache repositories.'} = '';
    $Self->{Translation}->{'Directory, which is used by Git to store temporary data.'} = '';
    $Self->{Translation}->{'Directory, which is used by Git to store working copies.'} = '';
    $Self->{Translation}->{'Disable online repositories.'} = '';
    $Self->{Translation}->{'Do not log git ssh connection authorization results for these users. Useful for automated stuff.'} =
        'Искључи бележење ауторизација приликом остваривања Git SSH конекција за ове кориснике. Корисно за аутоматизацију.';
    $Self->{Translation}->{'Dynamic Fields Screens'} = '';
    $Self->{Translation}->{'DynamicFieldScreen'} = '';
    $Self->{Translation}->{'Export all available public keys to authorized_keys file.'} = 'Извези све доступне јавне кључеве у датотеку authorized_keys.';
    $Self->{Translation}->{'Export all relevant releases to ftp server.'} = 'Извоз свих релевантних издања на FTP сервер.';
    $Self->{Translation}->{'Frontend module registration for the OPMS object in the agent interface.'} =
        'Модул регистрације за OPMS објекат у интерфејсу оператера.';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSRepository object in the public interface.'} =
        'Модул регистрације за PublicOPMSRepository објекат у јавном интерфејсу.';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSRepositoryLookup object in the public interface.'} =
        'Модул регистрације за PublicOPMSRepositoryLookup објекат у јавном интерфејсу.';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSTestBuild object in the public interface.'} =
        'Модул регистрације за PublicOPMSTestBuild објекат у јавном интерфејсу.';
    $Self->{Translation}->{'Frontend module registration for the PublicPackageVerification object in the public interface.'} =
        'Модул регистрације за PublicPackageVerification објекат у јавном интерфејсу.';
    $Self->{Translation}->{'Frontend module registration for the admin interface.'} = '';
    $Self->{Translation}->{'GIT Author registration.'} = 'Регистрација Git аутора.';
    $Self->{Translation}->{'Generate HTML comment hooks for the specified blocks so that filters can use them.'} =
        '';
    $Self->{Translation}->{'Generate documentations once per night.'} = '';
    $Self->{Translation}->{'Git'} = 'Git';
    $Self->{Translation}->{'Git Management'} = 'Git управљање';
    $Self->{Translation}->{'Git Repository'} = '';
    $Self->{Translation}->{'Group, whose members have delete admin permissions in OPMS.'} = 'Група чији чланови имају дозволу за брисање у OPMS.';
    $Self->{Translation}->{'Group, whose members have repository admin permissions in OPMS.'} =
        'Група чији чланови имају администраторске дозволе у OPMS.';
    $Self->{Translation}->{'Group, whose members will see CI test result information in OPMS screens.'} =
        '';
    $Self->{Translation}->{'Groups an authenticated user (by user login and password) must be member of to build test packages via the public interface.'} =
        'Групе у којима регистровани корисник (по корисничком имену и лозинци) мора бити члан да би имао дозволу за креирање тест издања пакета у јавном интерфејсу.';
    $Self->{Translation}->{'Groups which will be set during git project creation processes while adding OPMS repositories.'} =
        'Групе које ће бити подешене приликом креирања GIT пројекта у случају додавања OPMS складишта.';
    $Self->{Translation}->{'Manage dynamic field in screens.'} = '';
    $Self->{Translation}->{'Manage your public SSH key(s) for Git access here. Make sure to save this preference when you add a new key.'} =
        'Уредите своје јавне SSH кључеве за Git приступ. Обратите пажњу да морате сачувати ово подешавање приликом додавања новог кључа.';
    $Self->{Translation}->{'Module to generate statistics about the added code lines.'} = 'Модул за генерисање статистика о броју додатих линија кода.';
    $Self->{Translation}->{'Module to generate statistics about the growth of code.'} = 'Модул за генерисање статистика о увећању кода.';
    $Self->{Translation}->{'Module to generate statistics about the number of git commits.'} =
        'Модул за генерисање статистика о броју Git комитова.';
    $Self->{Translation}->{'Module to generate statistics about the removed code lines.'} = 'Модул за генерисање статистика о броју уклоњених линија кода.';
    $Self->{Translation}->{'OPMS'} = 'OPMS';
    $Self->{Translation}->{'Only users who have rw permissions in one of these groups may access git.'} =
        'Само корисници који имају rw дозволу у једној од ових група имаће Git приступ.';
    $Self->{Translation}->{'Option to set a package compatibility manually.'} = '';
    $Self->{Translation}->{'Parameters for the pages in the BranchView screen.'} = 'Параметри за странице у екрану приказа гране.';
    $Self->{Translation}->{'Pre-Definition of the \'GITProjectName\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Предефинисање динамичког поља \'GITProjectName\': Group => група за приступ динамичким пољима; AlwaysVisible => поље може бити уклоњено (0|1); InformationAreaName => наслов додатака; InformationAreaSize => величина и позиција додатака (Large|Small); Name => назив динамичког поља; Priority => редослед динамичких поља; State => статус поља (0 = онемогућено, 1 = омогућено, 2 = обавезно); FilterRepository => регуларни израз који назив складишта мора да задовољава да би поље било приказано; FilterPackage => регуларни израз које назив пакета мора да задовољава да би поље било приказано; FilterBranch => регуларни израз који назив гране мора да задовољава да би поље било приказано; FilterRelease => регуларни израз који верзија издања мора да задовољава да би поље било приказано.';
    $Self->{Translation}->{'Pre-Definition of the \'GITRepositoryName\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Предефинисање динамичког поља \'GITRepositoryName\': Group => група за приступ динамичким пољима; AlwaysVisible => поље може бити уклоњено (0|1); InformationAreaName => наслов додатака; InformationAreaSize => величина и позиција додатака (Large|Small); Name => назив динамичког поља; Priority => редослед динамичких поља; State => статус поља (0 = онемогућено, 1 = омогућено, 2 = обавезно); FilterRepository => регуларни израз који назив складишта мора да задовољава да би поље било приказано; FilterPackage => регуларни израз које назив пакета мора да задовољава да би поље било приказано; FilterBranch => регуларни израз који назив гране мора да задовољава да би поље било приказано; FilterRelease => регуларни израз који верзија издања мора да задовољава да би поље било приказано.';
    $Self->{Translation}->{'Pre-Definition of the \'PackageDeprecated\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Предефинисање динамичког поља \'PackageDeprecated\': Group => група за приступ динамичким пољима; AlwaysVisible => поље може бити уклоњено (0|1); InformationAreaName => наслов додатака; InformationAreaSize => величина и позиција додатака (Large|Small); Name => назив динамичког поља; Priority => редослед динамичких поља; State => статус поља (0 = онемогућено, 1 = омогућено, 2 = обавезно); FilterRepository => регуларни израз који назив складишта мора да задовољава да би поље било приказано; FilterPackage => регуларни израз које назив пакета мора да задовољава да би поље било приказано; FilterBranch => регуларни израз који назив гране мора да задовољава да би поље било приказано; FilterRelease => регуларни израз који верзија издања мора да задовољава да би поље било приказано.';
    $Self->{Translation}->{'Recipients that will be informed by email in case of errors.'} =
        '';
    $Self->{Translation}->{'SSH Keys for Git Access'} = 'SSH кључеви за Git приступ';
    $Self->{Translation}->{'Send analysis file'} = '';
    $Self->{Translation}->{'Sets the git clone address to be used in repository listings.'} =
        'Дефинише адресу за Git клонирање која ће бити коришћена у приказу репозиторија.';
    $Self->{Translation}->{'Sets the home directory for git repositories.'} = 'Дефинише директоријум за Git репозиторије.';
    $Self->{Translation}->{'Sets the path for the BugzillaAddComment post receive script location.'} =
        'Дефинише путању до BugzillaAddComment скрипта.';
    $Self->{Translation}->{'Sets the path for the OTRSCodePolicy  script location. It is recommended to have a separate clone of the OTRSCodePolicy module that is updated via cron.'} =
        '';
    $Self->{Translation}->{'Sets the path for the OTRSCodePolicy pre receive script location. It is recommended to have a separate clone of the OTRSCodePolicy module that is updated via cron.'} =
        'Дефинише путању до OTRSCodePolicy скрипта. Препоручено је да постоји посебан клон OTRSCodePolicy модула који се редовно освежава путем cron.';
    $Self->{Translation}->{'Show latest commits in git repositories.'} = '';
    $Self->{Translation}->{'Shows a link in the menu to go create a unit test from the current ticket.'} =
        '';
    $Self->{Translation}->{'Synchronize OPMS tables with a remote database.'} = 'Синхронизација OPMS табела са удаљеном базом.';
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
        'Корисници који имају rw дозволу у једној од ових група имаће могућност извршавања команде \'git push --force\'.';
    $Self->{Translation}->{'Users who have rw permissions in one of these groups are permitted to manage projects. Additionally the members have administration permissions to the git management.'} =
        'Корисници који имају rw дозволу у једној од ових група имаће могућност управљања пројектима. Додатно припадници ће имати администрационе привилегије за Git управљање.';


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
