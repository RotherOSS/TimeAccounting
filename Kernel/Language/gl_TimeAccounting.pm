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

package Kernel::Language::gl_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Quere realmente borrar o Tempo Contabilizado deste día?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Edite Rexistro Tempo';
    $Self->{Translation}->{'Go to settings'} = 'Ir á configuración';
    $Self->{Translation}->{'Date Navigation'} = 'Navegación entre datas';
    $Self->{Translation}->{'Days without entries'} = 'Días sen entradas';
    $Self->{Translation}->{'Select all days'} = 'Seleccionar todos os días';
    $Self->{Translation}->{'Mass entry'} = 'Introdución en masa';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Escolla o motivo da súa ausencia nos días seleccionados';
    $Self->{Translation}->{'On vacation'} = 'Vacacións';
    $Self->{Translation}->{'On sick leave'} = 'Licenza por enfermidade';
    $Self->{Translation}->{'On overtime leave'} = 'En permiso de horas extras';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Os campos obrigatorios están marcados cun «*».';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Hai que dar unha hora de inicio e de remate ou un período de tempo.';
    $Self->{Translation}->{'Project'} = 'Proxecto';
    $Self->{Translation}->{'Task'} = 'Tarefa';
    $Self->{Translation}->{'Remark'} = 'Observación';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Non se permiten horas negativas.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Non se permiten horas repetidas. A hora de inicio coincide con outro intervalo.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'O formato é incorrecto! Introduza unha hora no formato HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 só está permitido como hora de finalización.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'A hora é incorrecta! Un día só ten 24 horas.';
    $Self->{Translation}->{'End time must be after start time.'} = 'A hora de finalización ha de ser posterior á de inicio.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Non se permiten horas repetidas. A hora de finalización coincide con outro intervalo.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'O período é incorrecto! Un día só ten 24 horas.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Un período correcto ha de ser maior de cero.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'O período é incorrecto! Non se permiten períodos negativos.';
    $Self->{Translation}->{'Add one row'} = 'Engadir unha fila';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Só é posíbel seleccionar un elemento!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Confirma que traballou mentres tiña licenza por enfermidade?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Confirma que traballou mentres estaba de vacacións?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Confirma que traballou mentres tiña permiso por horas extras?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Confirma que traballou máis de dezaseis horas?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Vista xeral mensual de reporte de tempo';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Horas extra (horas)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Horas extra (este mes)';
    $Self->{Translation}->{'Overtime (total)'} = 'Horas extra (total)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Permiso por horas extras restantes';
    $Self->{Translation}->{'Vacation (Days)'} = 'Vacacións (días)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Vacacións collidas (este mes)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Vacacións collidas (totais)';
    $Self->{Translation}->{'Remaining vacation'} = 'Vacacións restantes';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Licenza por enfermidade (días)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Licenzas por enfermidade collidas (este mes)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Licenzas por enfermidade collidas (totais)';
    $Self->{Translation}->{'Previous month'} = 'Mes anterior';
    $Self->{Translation}->{'Next month'} = 'Mes seguinte';
    $Self->{Translation}->{'Weekday'} = 'Día da semana';
    $Self->{Translation}->{'Working Hours'} = 'Horas laborais';
    $Self->{Translation}->{'Total worked hours'} = 'Horas traballadas totais';
    $Self->{Translation}->{'User\'s project overview'} = 'Vista xeral do proxecto do usuario';
    $Self->{Translation}->{'Hours (monthly)'} = 'Horas (por mes)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Horas (vida)';
    $Self->{Translation}->{'Grand total'} = 'Total acumulado';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Reporte tempo';
    $Self->{Translation}->{'Month Navigation'} = 'Navegación por meses';
    $Self->{Translation}->{'Go to date'} = 'Ir a unha data';
    $Self->{Translation}->{'User reports'} = 'Informes de usuario';
    $Self->{Translation}->{'Monthly total'} = 'Total mensual';
    $Self->{Translation}->{'Lifetime total'} = 'Total da vida';
    $Self->{Translation}->{'Overtime leave'} = 'Licenza por horas extra';
    $Self->{Translation}->{'Vacation'} = 'Vacacións';
    $Self->{Translation}->{'Sick leave'} = 'Licenza por enfermidade';
    $Self->{Translation}->{'Vacation remaining'} = 'Vacacións restantes';
    $Self->{Translation}->{'Project reports'} = 'Informes de proxectos';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Informe de proxectos';
    $Self->{Translation}->{'Go to reporting overview'} = 'Ir á vista xeral de informes';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Actualmente só usuarios activos neste proxecto son mostrados. Para cambiar este comportamento, por favor actualice o axuste:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Todo o tempo contabilizado polos usuarios é mostrado. Para cambiar este comportamento, por favor actulice o axuste:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Edite Contabilización do Tempo en Axustes de Proyecto';
    $Self->{Translation}->{'Add project'} = 'Engadir un proxecto';
    $Self->{Translation}->{'Go to settings overview'} = 'Vaia á vista xeral de axustes';
    $Self->{Translation}->{'Add Project'} = 'Engadir un proxecto';
    $Self->{Translation}->{'Edit Project Settings'} = 'Editar a configuración do proxecto';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Xa hai un proxecto con este nome. Por favor, escolla un diferente.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Edite Contabilización do Tempo en Axustes';
    $Self->{Translation}->{'Add task'} = 'Engadir unha tarefa';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = '';
    $Self->{Translation}->{'Time periods can not be deleted.'} = '';
    $Self->{Translation}->{'Project List'} = 'Lista de proxectos';
    $Self->{Translation}->{'Task List'} = 'Lista de tarefas';
    $Self->{Translation}->{'Add Task'} = 'Engadir unha tarefa';
    $Self->{Translation}->{'Edit Task Settings'} = 'Editar a configuración da tarefa';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Xa hai unha tarefa con este nome. Por favor, escolla un diferente.';
    $Self->{Translation}->{'User List'} = 'Lista de usuarios';
    $Self->{Translation}->{'User Settings'} = '';
    $Self->{Translation}->{'User is allowed to see overtimes'} = '';
    $Self->{Translation}->{'Show Overtime'} = 'Mostrar Tempo Exceso';
    $Self->{Translation}->{'User is allowed to create projects'} = '';
    $Self->{Translation}->{'Allow project creation'} = 'Permitir creación proxecto';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '';
    $Self->{Translation}->{'Allow time accounting skipping'} = '';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '';
    $Self->{Translation}->{'Time Spans'} = '';
    $Self->{Translation}->{'Period Begin'} = 'Comienzo Periodo';
    $Self->{Translation}->{'Period End'} = 'Fin Periodo';
    $Self->{Translation}->{'Days of Vacation'} = 'Días de Vacaciones';
    $Self->{Translation}->{'Hours per Week'} = 'Horas por Semana';
    $Self->{Translation}->{'Authorized Overtime'} = 'Exceso Tempo Autorizado';
    $Self->{Translation}->{'Start Date'} = 'Data de comezo';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Por favor introduzca unha data válida';
    $Self->{Translation}->{'End Date'} = 'Data de finalización';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Fin do periodo debe ser despois de que comience o periodo';
    $Self->{Translation}->{'Leave Days'} = 'Días de permiso';
    $Self->{Translation}->{'Weekly Hours'} = 'Horas semanais';
    $Self->{Translation}->{'Overtime'} = 'Horas extra';
    $Self->{Translation}->{'No time periods found.'} = 'Non se atoparon períodos de tempo.';
    $Self->{Translation}->{'Add time period'} = 'Engadir periodo de tempo';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Vista Rexistro de Tempo';
    $Self->{Translation}->{'View of '} = 'Vista de';
    $Self->{Translation}->{'Previous day'} = 'Día anterior';
    $Self->{Translation}->{'Next day'} = 'Día seguinte';
    $Self->{Translation}->{'No data found for this day.'} = 'Non se atoparon datos para este día.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '';
    $Self->{Translation}->{'Last Projects'} = '';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = '';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        '';
    $Self->{Translation}->{'Incomplete Working Days'} = '';
    $Self->{Translation}->{'Successful insert!'} = 'Inserción satisfactoria!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Erro mentres introducíanse datas múltiples!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Entradas satisfactoriamente introducidas para varias datas!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Data introducida foi invalida! A data foi cambiada a hoxe.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '';
    $Self->{Translation}->{'Last Selected Projects'} = '';
    $Self->{Translation}->{'All Projects'} = '';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = '';
    $Self->{Translation}->{'Reporting Project'} = '';
    $Self->{Translation}->{'Reporting'} = 'Informes';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = '';
    $Self->{Translation}->{'Project added!'} = '';
    $Self->{Translation}->{'Project updated!'} = '';
    $Self->{Translation}->{'Task added!'} = '';
    $Self->{Translation}->{'Task updated!'} = '';
    $Self->{Translation}->{'The UserID is not valid!'} = '';
    $Self->{Translation}->{'Can\'t insert user data!'} = '';
    $Self->{Translation}->{'Unable to add time period!'} = '';
    $Self->{Translation}->{'Setting'} = 'Configuración';
    $Self->{Translation}->{'User updated!'} = '';
    $Self->{Translation}->{'User added!'} = '';
    $Self->{Translation}->{'Add a user to time accounting...'} = '';
    $Self->{Translation}->{'New User'} = '';
    $Self->{Translation}->{'Period Status'} = '';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = '';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Introduza as súas horas de traballo!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = '';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Escolla ao menos un día!';
    $Self->{Translation}->{'Mass Entry'} = 'Introdución en masa';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Escolla o motivo da ausencia!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Elimine Entrada Tempo Contabilizado';
    $Self->{Translation}->{'Confirm insert'} = 'Confirme a inserción';

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
