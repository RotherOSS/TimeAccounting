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

package Kernel::Language::pt_BR_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Você realmente deseja remover o apontamento de tempo deste dia ?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Editar registro de tempo';
    $Self->{Translation}->{'Go to settings'} = 'Ir para configurações';
    $Self->{Translation}->{'Date Navigation'} = 'Navegação de datas';
    $Self->{Translation}->{'Days without entries'} = 'Dias sem apontamentos';
    $Self->{Translation}->{'Select all days'} = 'Selecionar todos os dias';
    $Self->{Translation}->{'Mass entry'} = 'Entrada em massa';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Por favor, escolha o motivo de sua ausência para os dias selecionados';
    $Self->{Translation}->{'On vacation'} = 'Em férias';
    $Self->{Translation}->{'On sick leave'} = 'Em licença médica';
    $Self->{Translation}->{'On overtime leave'} = 'Em licença de horas extras';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Campos obrigatórios estão marcados com "*"';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Você têm que preencher início e fim, ou um período de tempo.';
    $Self->{Translation}->{'Project'} = 'Projeto';
    $Self->{Translation}->{'Task'} = 'Tarefas';
    $Self->{Translation}->{'Remark'} = 'Observação';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Por favor, adicione um comentário com mais de 8 caracteres!';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Datas negativas não são liberadas';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Horas repetidas não são liberadas. Inicie o apontamento em outro intervalo.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Formato inválido! Por favor, entre com um tempo no formato HH:MM';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = 'Apenas 24:00 são permitidas como tempo final';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Tempo inválido! Um dia tem apenas 24 horas.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Tempo final deve ser depois do tempo inicial.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Horas repetidas não são liberadas. Inicie o apontamento em outro intervalo.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Período inválido! Um dia tem apenas 24 horas.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Um período válido deve ser maior que zero.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Período inválido! Períodos negativos não são liberados.';
    $Self->{Translation}->{'Add one row'} = 'Adicionar uma linha';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Você pode selecionar apenas um elemento no checkbox!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Tem certeza de que você trabalhou enquanto estava em licença médica?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Tem certeza de que você trabalhou enquanto estava de férias?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Você tem certeza que trabalhou enquanto estava de licença de horas extras.';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Você tem certeza que trabalhou mais que 16 horas?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Relatório de apontamento de tempo mensal';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Horas extras (horas)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Horas extras (este mês)';
    $Self->{Translation}->{'Overtime (total)'} = 'Horas extras (total)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Restante da licença de horas extras';
    $Self->{Translation}->{'Vacation (Days)'} = 'Férias (Dias)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Férias tiradas (este mês)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Férias tiradas (total)';
    $Self->{Translation}->{'Remaining vacation'} = 'Férias restantes';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Licença Médica (Dias)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Licença médicas tiradas  ( este mês )';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Licença médicas tiradas  ( total )';
    $Self->{Translation}->{'Previous month'} = 'Mês anterior';
    $Self->{Translation}->{'Next month'} = 'Próximo mês';
    $Self->{Translation}->{'Weekday'} = 'Dia da semana';
    $Self->{Translation}->{'Working Hours'} = 'Horário de trabalho';
    $Self->{Translation}->{'Total worked hours'} = 'Total de horas trabalhadas';
    $Self->{Translation}->{'User\'s project overview'} = 'Visão de projeto de usuários';
    $Self->{Translation}->{'Hours (monthly)'} = 'Horas ( mensal )';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Horas ( Duração )';
    $Self->{Translation}->{'Grand total'} = 'Total geral';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Relatório de tempo';
    $Self->{Translation}->{'Month Navigation'} = 'Navegação Mensal';
    $Self->{Translation}->{'Go to date'} = 'Ir para data';
    $Self->{Translation}->{'User reports'} = 'Relatórios de usuários';
    $Self->{Translation}->{'Monthly total'} = 'Total mensal';
    $Self->{Translation}->{'Lifetime total'} = 'Duração total';
    $Self->{Translation}->{'Overtime leave'} = 'Licença de horas extras';
    $Self->{Translation}->{'Vacation'} = 'Férias';
    $Self->{Translation}->{'Sick leave'} = 'Licença médica';
    $Self->{Translation}->{'Vacation remaining'} = 'Férias restante';
    $Self->{Translation}->{'Project reports'} = 'Relatórios de projeto';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Relatório de projeto';
    $Self->{Translation}->{'Go to reporting overview'} = 'Ir para visão geral de relatórios';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Atualmente somente usuários ativos neste projeto são exibidos. Para alterar esse comportamento, por favor atualize a configuração:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Atualmente todos os apontamento de tempos dos usuários são exibidos. Para alterar esse comportamento, por favor atualize a configuração:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Editar configurações do Projeto';
    $Self->{Translation}->{'Add project'} = 'Adicionar projeto';
    $Self->{Translation}->{'Go to settings overview'} = 'Ir para configurações gerais';
    $Self->{Translation}->{'Add Project'} = 'Adicionar projeto';
    $Self->{Translation}->{'Edit Project Settings'} = 'Editar Configurações do Projeto';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Já existe um projeto com este nome. Por favor, escolha um diferente.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Editar Configurações da Contabilidade de Tempo.';
    $Self->{Translation}->{'Add task'} = 'Adicionar tarefa';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Filtrar por projetos, tarefas ou usuários';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Períodos de tempo não podem ser excluídos.';
    $Self->{Translation}->{'Project List'} = 'Lista de projetos';
    $Self->{Translation}->{'Task List'} = 'Lista de tarefas';
    $Self->{Translation}->{'Add Task'} = 'Adicionar tarefa';
    $Self->{Translation}->{'Edit Task Settings'} = 'Editar configurações da Tarefa';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Já existe uma tarefa com esse nome. Por favor, escolha um nome diferente.';
    $Self->{Translation}->{'User List'} = 'Lista de usuários';
    $Self->{Translation}->{'User Settings'} = 'Configurações de usuário';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'O usuário tem permissão para ver horas extras';
    $Self->{Translation}->{'Show Overtime'} = 'Mostrar horas extras';
    $Self->{Translation}->{'User is allowed to create projects'} = 'O usuário tem permissão para criar projetos';
    $Self->{Translation}->{'Allow project creation'} = 'Liberar criação de projetos';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'Usuário tem permissão de pular a contabilidade de tempo';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Permitir pular a contabilidade de tempo';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Se esta opção for selecionada, a contabilidade de tempo será efetivamente opcional para o usuário.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'Não haverão alertas sobre registros faltantes nem registros forçados.';
    $Self->{Translation}->{'Time Spans'} = 'Intervalos de tempo';
    $Self->{Translation}->{'Period Begin'} = 'Período Inicial';
    $Self->{Translation}->{'Period End'} = 'Período Final';
    $Self->{Translation}->{'Days of Vacation'} = 'Dias de Férias';
    $Self->{Translation}->{'Hours per Week'} = 'Horas por Semana';
    $Self->{Translation}->{'Authorized Overtime'} = 'Horas extras autorizada';
    $Self->{Translation}->{'Start Date'} = 'Data inicial ';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Por favor, insira uma data válida.';
    $Self->{Translation}->{'End Date'} = 'Data final';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Período final deve ser maior que  período inicial.';
    $Self->{Translation}->{'Leave Days'} = 'Dias de férias';
    $Self->{Translation}->{'Weekly Hours'} = 'Horas semanais';
    $Self->{Translation}->{'Overtime'} = 'Horas extras';
    $Self->{Translation}->{'No time periods found.'} = 'Período de tempo não encontrado.';
    $Self->{Translation}->{'Add time period'} = 'Adicionar período de tempo';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Ver registro de tempo';
    $Self->{Translation}->{'View of '} = 'Visão de';
    $Self->{Translation}->{'Previous day'} = 'Dia anterior';
    $Self->{Translation}->{'Next day'} = 'Próximo dia';
    $Self->{Translation}->{'No data found for this day.'} = 'Não foram encontrados dados para este dia.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Não foi possível inserir Unidades de Trabalho!';
    $Self->{Translation}->{'Last Projects'} = 'Últimos projetos';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Configurações não salvas, pois um dia tem apenas 24 horas!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Não foi possível deletar Unidades de Trabalho!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Esta Data está fora do limite, mas você não inseriu este dia ainda, então você possui UMA(!) chance de inserir';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Dias de trabalhos incompletos';
    $Self->{Translation}->{'Successful insert!'} = 'Inserido com sucesso!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Erro ao inserir múltiplas datas!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Entrada de várias datas inserida com sucesso!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Data inserida é inválida! Data foi alterada para hoje.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Nenhum período de tempo configurado ou a data especificada está fora dos períodos de tempo definidos.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Entre em contato com o administrador contábil do tempo para atualizar seus períodos de tempo!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Últimos projetos selecionados';
    $Self->{Translation}->{'All Projects'} = 'Todos os projetos';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'Projeto de Relatório: Necessário ProjectID';
    $Self->{Translation}->{'Reporting Project'} = 'Projeto de Relatório';
    $Self->{Translation}->{'Reporting'} = 'Relatório';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Impossível atualizar configurações de usuário!';
    $Self->{Translation}->{'Project added!'} = 'Projeto adicionado!';
    $Self->{Translation}->{'Project updated!'} = 'Projeto atualizado!';
    $Self->{Translation}->{'Task added!'} = 'Atividade adicionada!';
    $Self->{Translation}->{'Task updated!'} = 'Atividade atualizada!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'O UserID não é válido!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Não foi possível inserir dados de usuário!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Impossível adicionar período de tempo!';
    $Self->{Translation}->{'Setting'} = 'Configuração';
    $Self->{Translation}->{'User updated!'} = 'Usuário atualizado!';
    $Self->{Translation}->{'User added!'} = 'Usuário adicionado!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Adicionar um usuário para a contabilidade do tempo....';
    $Self->{Translation}->{'New User'} = 'Novo usuário';
    $Self->{Translation}->{'Period Status'} = 'Estado do período';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Visão: Necessário %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Por favor insira suas horas de trabalho!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Dias de trabalhos incompletos';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Por favor, escolha pelo menos um dia!';
    $Self->{Translation}->{'Mass Entry'} = 'Entrada em massa';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Por favor escolha um motivo para a ausência';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Deletar entrada na Contabilidade de Tempo.';
    $Self->{Translation}->{'Confirm insert'} = 'Confirmar inserção';

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
    $Self->{Translation}->{'Dynamic Fields Screens'} = 'Telas Campos Dinâmicos';
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
    $Self->{Translation}->{'Manage dynamic field in screens.'} = 'Gerenciar campo dinâmico em telas.';
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
        'Esta configuração define todas as telas possíveis para habilitar ou desabilitar colunas padrão.';
    $Self->{Translation}->{'This configuration defines all possible screens to enable or disable dynamic fields.'} =
        'Esta configuração define todas as telas possíveis para habilitar ou desabilitar campos dinâmicos.';
    $Self->{Translation}->{'This configuration defines if only valids or all (invalids) dynamic fields should be shown.'} =
        'Esta configuração define se somente os valores válidos ou todos os campos dinâmicos (inválidos) devem ser mostrados.';
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
