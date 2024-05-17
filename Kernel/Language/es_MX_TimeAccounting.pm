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

package Kernel::Language::es_MX_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        '¿Realmente desea eliminar la Contabilidad de Tiempo de este día?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Modificar Registro de Horas';
    $Self->{Translation}->{'Go to settings'} = 'Ir a configuraciones';
    $Self->{Translation}->{'Date Navigation'} = 'Navegación por Fecha';
    $Self->{Translation}->{'Days without entries'} = 'Días sin registro';
    $Self->{Translation}->{'Select all days'} = 'Seleccionar todos los días';
    $Self->{Translation}->{'Mass entry'} = 'Registro masivo';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Por favor escoja una razón para su ausencia para los días seleccionados';
    $Self->{Translation}->{'On vacation'} = 'De vacaciones';
    $Self->{Translation}->{'On sick leave'} = 'Ausente por enfermedad';
    $Self->{Translation}->{'On overtime leave'} = 'Ausente por haber trabajado horas extras';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Los campos requeridos están marcados con un "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Es necesario que proporcione una hora de inicio y una de finalización o un periodo.';
    $Self->{Translation}->{'Project'} = 'Proyecto';
    $Self->{Translation}->{'Task'} = 'Tarea';
    $Self->{Translation}->{'Remark'} = 'Comentario';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = '¡Por favor agregue una observación de m\'s de 8 caracteres!';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'No se permite la inserción de horas negativas.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'No se permite la inserción de horas repetidas. La hora de inicio está incluída en otro intervalo.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Formato inválido! Por favor introduzca las horas con el formato HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 es solo permitido como tiempo final.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Hora inválida! Un día solo tiene 24 horas.';
    $Self->{Translation}->{'End time must be after start time.'} = 'La hora de finalización debe ser posterior a la de inicio.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'No se permite la inserción de horas repetidas. La hora de finalización está incluída en otro intervalo.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = '¡Periodo inválido! Un día sólo tiene 24 horas.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Un periodo válido debe ser mayor a cero.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = '¡Periodo inválido! No se permiten periodos negativos.';
    $Self->{Translation}->{'Add one row'} = 'Añadir una fila';
    $Self->{Translation}->{'You can only select one checkbox element!'} = '¡Sólo se permite elegir un elemento checkbox!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = '¿Está seguro que trabajó durante su ausencia por enfermedad?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = '¿Está seguro que trabajó durante sus vacaciones?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        '¿Está seguro que trabajó durante su ausencia por haber trabajado horas extras?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = '¿Está seguro que trabajó más de 16 horas?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Vista mensual de tiempos reportados';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Número de horas extras';
    $Self->{Translation}->{'Overtime (this month)'} = 'Horas extras trabajadas (este mes)';
    $Self->{Translation}->{'Overtime (total)'} = 'Total de horas extras';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Horas restantes para ausentarse por haber trabajado horas extras';
    $Self->{Translation}->{'Vacation (Days)'} = 'Vacaciones (días)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Vacaciones (este mes)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Vacaciones tomadas (total)';
    $Self->{Translation}->{'Remaining vacation'} = 'Días de vacaciones restantes';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Ausencia por enfermedad (días)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Ausencias por enfermedad (este mes)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Ausencias por enfermedad (total)';
    $Self->{Translation}->{'Previous month'} = 'Mes anterior';
    $Self->{Translation}->{'Next month'} = 'Mes siguiente';
    $Self->{Translation}->{'Weekday'} = 'Día de la semana';
    $Self->{Translation}->{'Working Hours'} = 'Horas trabajadas';
    $Self->{Translation}->{'Total worked hours'} = 'Total de horas trabajadas';
    $Self->{Translation}->{'User\'s project overview'} = 'Vista de proyecto de usuario';
    $Self->{Translation}->{'Hours (monthly)'} = 'Horas (mensuales)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Horas (tiempo de vida)';
    $Self->{Translation}->{'Grand total'} = 'Total neto';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Reporte de horas';
    $Self->{Translation}->{'Month Navigation'} = 'Navegación por mes';
    $Self->{Translation}->{'Go to date'} = 'Ir a fecha';
    $Self->{Translation}->{'User reports'} = 'Reportes de usuario';
    $Self->{Translation}->{'Monthly total'} = 'Total mensual';
    $Self->{Translation}->{'Lifetime total'} = 'Tiempo total de vida';
    $Self->{Translation}->{'Overtime leave'} = 'Ausencia por haber trabajado horas extras';
    $Self->{Translation}->{'Vacation'} = 'Vacaciones';
    $Self->{Translation}->{'Sick leave'} = 'Ausencia por enfermedad';
    $Self->{Translation}->{'Vacation remaining'} = 'Días libres restantes';
    $Self->{Translation}->{'Project reports'} = 'Reportes de proyecto';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Reporte de proyecto';
    $Self->{Translation}->{'Go to reporting overview'} = 'Ir al resumen de reportes';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Actualmente solo se muestran los usuarios activos en este proyecto. Para cambiar este comportamiento, por favor actualize la configuración:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Actualmente se muestran todos los usuarios de contabilidad de tiempo. Para cambiar este comportamiento, por favor actualize la configuración:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Modificar la configuración del proyecto de contabilidad de tiempo';
    $Self->{Translation}->{'Add project'} = 'Agregar proyecto';
    $Self->{Translation}->{'Go to settings overview'} = 'Ir al resumen de configuración';
    $Self->{Translation}->{'Add Project'} = 'Agregar Proyecto';
    $Self->{Translation}->{'Edit Project Settings'} = 'Modificar la Configuración del Proyecto';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Ya existe un proyecto con este nombre. Por favor, elija uno diferente.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Modificar la Configuración de la Contabilidad de Tiempo';
    $Self->{Translation}->{'Add task'} = 'Agregar tarea';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Filtro para proyectos, tareas o usuarios';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Los períodos de tiempo no pueden ser eliminados.';
    $Self->{Translation}->{'Project List'} = 'Lista de Proyectos';
    $Self->{Translation}->{'Task List'} = 'Lista de Tareas';
    $Self->{Translation}->{'Add Task'} = 'Agregar Tarea';
    $Self->{Translation}->{'Edit Task Settings'} = 'Modificar la Configuración de la Tarea';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Ya existe una tarea con este nombre. Por favor, elija uno diferente.';
    $Self->{Translation}->{'User List'} = 'Lista de Usuarios';
    $Self->{Translation}->{'User Settings'} = 'Ajustes del Usuario';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'El usuario puede ver horas extras';
    $Self->{Translation}->{'Show Overtime'} = 'Mostrar horas extra';
    $Self->{Translation}->{'User is allowed to create projects'} = 'El usuario puede crear proyectos';
    $Self->{Translation}->{'Allow project creation'} = 'Permitir creación de proyectos';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'El usuario tiene puede omitir la contabilidad de tiempo';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Permitir la omisión de la contabilidad de tiempo';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Si se selecciona esta opción, la contabilidad de tiempo será opcional para el usuario.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'No habrá advertencias sobre entradas faltantes y no se exigirán las entradas.';
    $Self->{Translation}->{'Time Spans'} = 'Espacios de tiempo';
    $Self->{Translation}->{'Period Begin'} = 'Periodo de inicio';
    $Self->{Translation}->{'Period End'} = 'Periodo de finalización';
    $Self->{Translation}->{'Days of Vacation'} = 'Días de Vacaciones';
    $Self->{Translation}->{'Hours per Week'} = 'Horas por Semana';
    $Self->{Translation}->{'Authorized Overtime'} = 'Tiempo Extra Autorizado';
    $Self->{Translation}->{'Start Date'} = 'Fecha de inicio';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Por favor inserte una fecha válida.';
    $Self->{Translation}->{'End Date'} = 'Fecha de finalización';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'El periodo de finalización debe ser posterior al de inicio.';
    $Self->{Translation}->{'Leave Days'} = 'Días de ausencia';
    $Self->{Translation}->{'Weekly Hours'} = 'Horas semanales';
    $Self->{Translation}->{'Overtime'} = 'Horas extra';
    $Self->{Translation}->{'No time periods found.'} = 'No se encontraron periodos de tiempo.';
    $Self->{Translation}->{'Add time period'} = 'Agregar periodo de tiempo';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Ver registro de tiempo';
    $Self->{Translation}->{'View of '} = 'Resumen de ';
    $Self->{Translation}->{'Previous day'} = 'Día anterior';
    $Self->{Translation}->{'Next day'} = 'Día siguiente';
    $Self->{Translation}->{'No data found for this day.'} = 'No se encontraron datos de este día.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '¡No se pudieron intentar las Unidades de Trabajo!';
    $Self->{Translation}->{'Last Projects'} = 'Últimos Proyectos';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = '¡No se pudieron guardar los ajustes, porque el día solo tiene 24 horas!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '¡No se pudieron guardar las Unidades de Trabajo!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Esta Fecha esta fuera del límite, pero todavía no ha insertado este día, entonces usted tiene solo una oportunidad de insertar';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Días Laborales Incompletos';
    $Self->{Translation}->{'Successful insert!'} = 'Inserción exitosa!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Error al insertar múltiples fechas!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = '¡Se insertaron satisfactoriamente las entradas de varias fechas!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'La fecha entrada es incorrecta! La fecha de ha cambiado a hoy.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'No hay un periodo de tiempo configurado, o la fecha especificada está fuera de los periodos de tiempo definidos.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '¡Por favor contacte al administrador de contabilidad de tiempos para actualizar sus periodos de tiempo!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Los Últimos Proyectos Seleccionados';
    $Self->{Translation}->{'All Projects'} = 'Todos los Proyectos';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'ReporteDeProyectos: Necesita "ProjectID"';
    $Self->{Translation}->{'Reporting Project'} = 'Reporte de Proyectos';
    $Self->{Translation}->{'Reporting'} = 'Reportes';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = '¡No fue posible actualizar los ajustes del usuario!';
    $Self->{Translation}->{'Project added!'} = '¡Proyecto añadido!';
    $Self->{Translation}->{'Project updated!'} = '¡Proyecto actualizado!';
    $Self->{Translation}->{'Task added!'} = '¡Tarea añadida!';
    $Self->{Translation}->{'Task updated!'} = '¡Tarea actualizada!';
    $Self->{Translation}->{'The UserID is not valid!'} = '¡El "UserID" no es válido!';
    $Self->{Translation}->{'Can\'t insert user data!'} = '¡No se puede insertar datos del usuario!';
    $Self->{Translation}->{'Unable to add time period!'} = '¡No fue posible añadir el periodo de tiempo!';
    $Self->{Translation}->{'Setting'} = 'Configuración';
    $Self->{Translation}->{'User updated!'} = '¡Usuario actualizado!';
    $Self->{Translation}->{'User added!'} = '¡Usuario añadido!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Añadir usuario a contabilidad de tiempos...';
    $Self->{Translation}->{'New User'} = 'Usuario Nuevo';
    $Self->{Translation}->{'Period Status'} = 'Estado del Periodo';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Vista: ¡Necesita %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Por favor inserte sus horas de trabajo!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Días laborales incompletos';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = '¡Por favor seleccione al menos un día!';
    $Self->{Translation}->{'Mass Entry'} = 'Registro Masivo';
    $Self->{Translation}->{'Please choose a reason for absence!'} = '¡Por favor escoja una razón por ausencia!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Eliminar Registro de Contabilidad de Tiempo';
    $Self->{Translation}->{'Confirm insert'} = 'Confirmar inserción';

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
