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

package Kernel::Language::it_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Vuoi veramente cancellare la rendicontazione temporale di oggi ?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Modifica la rendicontazione';
    $Self->{Translation}->{'Go to settings'} = 'Vai alle impostazioni';
    $Self->{Translation}->{'Date Navigation'} = 'Navigazione per data';
    $Self->{Translation}->{'Days without entries'} = 'Giorni senza informazioni';
    $Self->{Translation}->{'Select all days'} = 'Seleziona tutti i giorni';
    $Self->{Translation}->{'Mass entry'} = 'Inserimento massivo';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Per favore seleziona il motivo della tua assenza per i giorni selezionati.';
    $Self->{Translation}->{'On vacation'} = 'Ferie';
    $Self->{Translation}->{'On sick leave'} = 'Assente per malattia';
    $Self->{Translation}->{'On overtime leave'} = 'Assente per recupero';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'I campi obbligatori sono indicati con "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'E\' obbligatorio inserire inizio e fine oppure un periodo.';
    $Self->{Translation}->{'Project'} = 'Progetto';
    $Self->{Translation}->{'Task'} = 'Compito';
    $Self->{Translation}->{'Remark'} = 'Commento';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Aggiungere un commento con più di 8 caratteri!';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Non possono essere inseriti valori negativi.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Non è permesso inserire ore ripetute. L\'orario di inizio coincide con un altro intervallo.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Formato non valido. Inserire un orario nel formato HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = 'L\'ora 24:00 è consentita solo come ora di fine.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Orario non valido! In un giorno ci sono solo 24 ore.';
    $Self->{Translation}->{'End time must be after start time.'} = 'L\'orario di fine è posteriore all\'orario di inizio.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Non è permesso inserire ore ripetute. L\'orario di fine coincide con un altro intervallo.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Periodo non valido. Una giornata ha solo 24 ore.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Un periodo valido deve essere maggiore di zero.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Periodo non valido. Valori negativi non ammessi.';
    $Self->{Translation}->{'Add one row'} = 'Aggiungere una riga';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Puoi selezionare solo un elemento!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Sei sicuro di aver lavorato mentre eri assente per malattia?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Sei sicuro di aver lavorato mentre eri in ferie?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Sei sicuro di aver lavorato mentre eri assente per recupero ?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Sei sicuro di aver lavorato più di 16 ore?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Cruscotto mensile di rendicontazione temporale';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Straordinario (ore)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Straordinario (questo mese)';
    $Self->{Translation}->{'Overtime (total)'} = 'Straordinario (totale)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Totale ore di recupero disponibili';
    $Self->{Translation}->{'Vacation (Days)'} = 'Ferie (giorni)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Ferie utilizzate (questo mese)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Ferie utilizzate (totale)';
    $Self->{Translation}->{'Remaining vacation'} = 'Ferie residue';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Assenze per malattia (giorni)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Assenze per malattia utilizzate (questo mese)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Assenze per malattia (totale)';
    $Self->{Translation}->{'Previous month'} = 'Mese precedente';
    $Self->{Translation}->{'Next month'} = 'Mese seguente';
    $Self->{Translation}->{'Weekday'} = 'Giorno della settimana';
    $Self->{Translation}->{'Working Hours'} = 'Ore lavorative';
    $Self->{Translation}->{'Total worked hours'} = 'Totale ore lavorate';
    $Self->{Translation}->{'User\'s project overview'} = 'Visualizzazione del progetto - Utente';
    $Self->{Translation}->{'Hours (monthly)'} = 'Ore (mensili)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Ore (globali)';
    $Self->{Translation}->{'Grand total'} = 'Totale omnicomprensivo';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Report del tempo';
    $Self->{Translation}->{'Month Navigation'} = 'Navigazione per mese';
    $Self->{Translation}->{'Go to date'} = 'Vai alla data';
    $Self->{Translation}->{'User reports'} = 'Report utente';
    $Self->{Translation}->{'Monthly total'} = 'Totale mensile';
    $Self->{Translation}->{'Lifetime total'} = 'Totale gLobale';
    $Self->{Translation}->{'Overtime leave'} = 'Assenze per recupero';
    $Self->{Translation}->{'Vacation'} = 'Ferie';
    $Self->{Translation}->{'Sick leave'} = 'Malattia';
    $Self->{Translation}->{'Vacation remaining'} = 'Giorni rimanenti';
    $Self->{Translation}->{'Project reports'} = 'Riassunti progetto';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Riassunto progetto';
    $Self->{Translation}->{'Go to reporting overview'} = 'Vai al riepilogo di reportistica';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Vengono mostrati solo gli utenti attivi di questo progetto. Per cambiare questo comportaento aggiornare il parametro: ';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Vengono mostrati tutti gli utenti per la rendicontazione tempo. Per cambiare questo comportamento aggiornare il parametro:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Modificare le configurazioni di gestione del tempo del progetto.';
    $Self->{Translation}->{'Add project'} = 'Aggiungere progetto';
    $Self->{Translation}->{'Go to settings overview'} = 'Vai al riepilogo impostazioni';
    $Self->{Translation}->{'Add Project'} = 'Aggiungere progetto';
    $Self->{Translation}->{'Edit Project Settings'} = 'Modificare la configurazione del progetto';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Esiste già un progetto con questo nome. Scegleire un nome diverso.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Modificare le configurazioni della rendicontazione';
    $Self->{Translation}->{'Add task'} = 'Aggiungere compito';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Filtro per progetti, attività o utenti';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'I periodi di tempo non possono essere eliminati.';
    $Self->{Translation}->{'Project List'} = 'Elenco dei progetti';
    $Self->{Translation}->{'Task List'} = 'Elenco dei compiti';
    $Self->{Translation}->{'Add Task'} = 'Aggiungere compito';
    $Self->{Translation}->{'Edit Task Settings'} = 'Modificare la configurazione dei compiti';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Esiste già un task con questo nome. Scegliere un nome diverso.';
    $Self->{Translation}->{'User List'} = 'Elenco utenti';
    $Self->{Translation}->{'User Settings'} = 'Impostazioni utente';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'L\'Utente può vedere lo straordinario';
    $Self->{Translation}->{'Show Overtime'} = 'Mostrare straordinari';
    $Self->{Translation}->{'User is allowed to create projects'} = 'L\'Utente può creare progetti';
    $Self->{Translation}->{'Allow project creation'} = 'Consentire la creazione del progetto';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'L\'utente è autorizzato a saltare la contabilità del tempo';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Consenti il ​​salto della contabilità del tempo';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Se questa opzione è selezionata, la contabilità temporale è effettivamente facoltativa per l\'utente.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'Non ci saranno avvisi in merito a voci mancanti e nessuna applicazione di accesso.';
    $Self->{Translation}->{'Time Spans'} = 'Intervalli di tempo';
    $Self->{Translation}->{'Period Begin'} = 'Periodo di inizio';
    $Self->{Translation}->{'Period End'} = 'Periodo di termine';
    $Self->{Translation}->{'Days of Vacation'} = 'Giorni di Assenza';
    $Self->{Translation}->{'Hours per Week'} = 'Ore alla settimana';
    $Self->{Translation}->{'Authorized Overtime'} = 'Straordinari autorizzati';
    $Self->{Translation}->{'Start Date'} = 'Data di inizio';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Inserire una data valida.';
    $Self->{Translation}->{'End Date'} = 'Data Fine';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Il periodo finale deve essere posteriore al periodo iniziale.';
    $Self->{Translation}->{'Leave Days'} = 'Giorni di assenza';
    $Self->{Translation}->{'Weekly Hours'} = 'Orari della Settimana';
    $Self->{Translation}->{'Overtime'} = 'Straordinario';
    $Self->{Translation}->{'No time periods found.'} = 'Non ci sono periodi.';
    $Self->{Translation}->{'Add time period'} = 'Aggiungi periodo';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Visualizzare registro orario';
    $Self->{Translation}->{'View of '} = 'Visualizzazione di  ';
    $Self->{Translation}->{'Previous day'} = 'Giorno precedente';
    $Self->{Translation}->{'Next day'} = 'Giorno successivo';
    $Self->{Translation}->{'No data found for this day.'} = 'Nessun dato trovato per questo giorno.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Non puoi inserire le unità lavorative!';
    $Self->{Translation}->{'Last Projects'} = 'Ultimi progetti';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Non puoi salvare le impostazioni, perchè un giorno ha solo 24 ore!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Non puoi cancellare le unità lavorative!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Questa Data è fuori limite massimo, ma non hai ancora ancora inserito questo giorno, quindi hai ancora una (!) possibilità di inserirne uno.';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Giorni lavorativi incompleti';
    $Self->{Translation}->{'Successful insert!'} = 'Inserimento avvenuto con successo!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Si è verificato un errore nell\'inserimento di date multiple!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Inserimento di date multiple avvenuto con successo!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'La data inserita non è valida! E\' stata impostata la data di oggi.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Nessun periodo di tempo configurato, o la data specificata è fuori dai periodi di tempo definiti.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Per favore, contattare l\'amministrazione della contabilizzazione temporale per aggiornare i tuoi intervalli di tempo!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Ultimi progetti selezionati';
    $Self->{Translation}->{'All Projects'} = 'Tutti i progetti';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'RapportoProgetto: ProjectID necessario';
    $Self->{Translation}->{'Reporting Project'} = 'Compilando il rapporto del progetto';
    $Self->{Translation}->{'Reporting'} = 'Reportistica';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Impossibile aggiornare le impostazioni utente!';
    $Self->{Translation}->{'Project added!'} = 'Progetto aggiunto!';
    $Self->{Translation}->{'Project updated!'} = 'Progetto aggiornato!';
    $Self->{Translation}->{'Task added!'} = 'Attività aggiunta!';
    $Self->{Translation}->{'Task updated!'} = 'Attività aggiornata!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'Lo UserID non è valido!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Non puoi inserire i dati dell\'utente!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Non sei abilitato ad inserire i periodi di tempo!';
    $Self->{Translation}->{'Setting'} = 'Impostazione';
    $Self->{Translation}->{'User updated!'} = 'Utente aggiornato!';
    $Self->{Translation}->{'User added!'} = 'Utente inserito!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Aggiungi un utente per la contabilizzazione temporale';
    $Self->{Translation}->{'New User'} = 'Nuovo utente';
    $Self->{Translation}->{'Period Status'} = 'Stato di periodo';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Vista: %s richiesto!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Inserire l\'orario lavorativo!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Giorni lavorativi incompleti';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Specificare almeno un giorno!';
    $Self->{Translation}->{'Mass Entry'} = 'Inserimento massivo';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Selezionare un motivo per l\'assenza!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Cancellare voce di rendicontazione';
    $Self->{Translation}->{'Confirm insert'} = 'Confermare inserimento';

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
