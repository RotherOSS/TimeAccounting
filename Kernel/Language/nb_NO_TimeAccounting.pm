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

package Kernel::Language::nb_NO_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Vil du virkelig fjerne tidsregistreringen for denne dagen?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Endre tidsregistrering';
    $Self->{Translation}->{'Go to settings'} = 'Innstillinger';
    $Self->{Translation}->{'Date Navigation'} = 'Navigering mellom datoer';
    $Self->{Translation}->{'Days without entries'} = 'Dager uten tidregistrering';
    $Self->{Translation}->{'Select all days'} = 'Velg alle dager';
    $Self->{Translation}->{'Mass entry'} = 'Masseregistrering';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Vennligst velg årsaken til ditt fravær på de valgte dagene';
    $Self->{Translation}->{'On vacation'} = 'Ferie';
    $Self->{Translation}->{'On sick leave'} = 'Sykefravær';
    $Self->{Translation}->{'On overtime leave'} = 'Avspassering';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Obligatoriske felt er markert med "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Du må fylle ut start- og sluttidspunkt, eller periodelengden.';
    $Self->{Translation}->{'Project'} = 'Prosjekt';
    $Self->{Translation}->{'Task'} = 'Aktivitet';
    $Self->{Translation}->{'Remark'} = 'Merknad';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Vennligst skriv inn en merknad på minst 8 tegn!';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Negativ tid godtas ikke.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Overlappende perioder ikke tillatt. Starttiden er i en annen periode.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Feil format! Vennligst oppgi ett tidspunkt i formatet TT:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 godtas bare som sluttid.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Feilaktig tid! Et døgn har kun 24 timer.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Sluttid må være senere enn starttid.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Overlappende perioder ikke tillatt. Sluttiden er i en annen periode.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Feilaktig tid! Et døgn har kun 24 timer.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'En tidsperiode må være større enn null.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Feilaktid tid.  Negativ tid godtas ikke.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Legg til en rad.';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Du kan bare gjøre en avkrysning.';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Er du sikker på at du arbeidet mens du var sykemeldt.';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Er du sikker på at du arbeidet mens du hadde ferie?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Er du sikker på at du arbeidet mens du avspasserte.';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Er du sikker på at du arbeidet i flere enn 16 timer?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Månedsoversikt registrert tid';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Overtid (timer)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Overtid (denne måned)';
    $Self->{Translation}->{'Overtime (total)'} = 'Overtid (totalt)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Gjenstående avspasseringstimer';
    $Self->{Translation}->{'Vacation (Days)'} = 'Ferie (dager)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Ferie tatt (denne måned)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Ferie tatt (totalt)';
    $Self->{Translation}->{'Remaining vacation'} = 'Gjenstående feriedager';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Sykefravær (dager)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Sykefravær (denne måned)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Sykefravær (totalt)';
    $Self->{Translation}->{'Previous month'} = 'Forrige måned';
    $Self->{Translation}->{'Next month'} = 'Neste måned';
    $Self->{Translation}->{'Weekday'} = 'Ukedag';
    $Self->{Translation}->{'Working Hours'} = 'Arbeidet tid';
    $Self->{Translation}->{'Total worked hours'} = 'Total arbeidet tid';
    $Self->{Translation}->{'User\'s project overview'} = 'Brukers prosjektoversikt';
    $Self->{Translation}->{'Hours (monthly)'} = 'Timer (månedlig)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Timer (totalt)';
    $Self->{Translation}->{'Grand total'} = 'Sluttsum';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Tidrapportering';
    $Self->{Translation}->{'Month Navigation'} = 'Navigering mellom måneder';
    $Self->{Translation}->{'Go to date'} = 'Gå til dato';
    $Self->{Translation}->{'User reports'} = 'Brukerrapporter';
    $Self->{Translation}->{'Monthly total'} = 'Månedssum';
    $Self->{Translation}->{'Lifetime total'} = 'Totalsum';
    $Self->{Translation}->{'Overtime leave'} = 'Avspassering';
    $Self->{Translation}->{'Vacation'} = 'Ferie';
    $Self->{Translation}->{'Sick leave'} = 'Sykefravær';
    $Self->{Translation}->{'Vacation remaining'} = 'Gjenstående ferie';
    $Self->{Translation}->{'Project reports'} = 'Prosjektrapporter';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Prosjektrapport';
    $Self->{Translation}->{'Go to reporting overview'} = 'Gå til rapporteringsoversikt';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'For tiden vises bare de aktive brukerne i dette prosjektet. For å endre dette må følgende innstilling endres:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'For tiden vises alle tidsregistreringsbrukere. For å endre dette må følgende innstilling endres:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Endre instillinger for tidsregistreringsprosjekt';
    $Self->{Translation}->{'Add project'} = 'Legg til et prosjekt';
    $Self->{Translation}->{'Go to settings overview'} = 'Gå til oversikten over innstillinger';
    $Self->{Translation}->{'Add Project'} = 'Legg til et prosjekt';
    $Self->{Translation}->{'Edit Project Settings'} = 'Endre instillinger for prosjektet';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Det finnes allerede et prosjekt med dette navnet. Vennligst velg et annet navn.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Endre instillinger for tidsregistrering';
    $Self->{Translation}->{'Add task'} = 'Legg til en aktivitet';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = '';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Tidsperioder kan ikke slettes.';
    $Self->{Translation}->{'Project List'} = 'Prosjektliste';
    $Self->{Translation}->{'Task List'} = 'Aktivitetsliste';
    $Self->{Translation}->{'Add Task'} = 'Legg til en aktivitet';
    $Self->{Translation}->{'Edit Task Settings'} = 'Endre instillinger for aktiviteten';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Det finnes allerede en aktivitet med dette navnet. Vennligst velg et annet navn.';
    $Self->{Translation}->{'User List'} = 'Brukerliste';
    $Self->{Translation}->{'User Settings'} = '';
    $Self->{Translation}->{'User is allowed to see overtimes'} = '';
    $Self->{Translation}->{'Show Overtime'} = 'Vis overtid';
    $Self->{Translation}->{'User is allowed to create projects'} = '';
    $Self->{Translation}->{'Allow project creation'} = 'Tillatt bruker å opprette prosjekter';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '';
    $Self->{Translation}->{'Allow time accounting skipping'} = '';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '';
    $Self->{Translation}->{'Time Spans'} = '';
    $Self->{Translation}->{'Period Begin'} = 'Periodestart';
    $Self->{Translation}->{'Period End'} = 'Periodeslutt';
    $Self->{Translation}->{'Days of Vacation'} = 'Feriedager';
    $Self->{Translation}->{'Hours per Week'} = 'Timer per uke';
    $Self->{Translation}->{'Authorized Overtime'} = 'Pålagt overtid';
    $Self->{Translation}->{'Start Date'} = 'Startdato';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Vennligst sett inn en gyldig dato.';
    $Self->{Translation}->{'End Date'} = 'Sluttdato';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Periodeslutt må være etter periodestart.';
    $Self->{Translation}->{'Leave Days'} = 'Dager med gyldig fravær';
    $Self->{Translation}->{'Weekly Hours'} = 'Ukentlige timer';
    $Self->{Translation}->{'Overtime'} = 'Overtid';
    $Self->{Translation}->{'No time periods found.'} = 'Ingen tidsperioder funnet';
    $Self->{Translation}->{'Add time period'} = 'Legg til en tidsperiode';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Se på tidsregistrering';
    $Self->{Translation}->{'View of '} = 'Visning av';
    $Self->{Translation}->{'Previous day'} = 'Forrige dag';
    $Self->{Translation}->{'Next day'} = 'Neste dag';
    $Self->{Translation}->{'No data found for this day.'} = 'Ingen data funnet for denne dagen.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '';
    $Self->{Translation}->{'Last Projects'} = 'Seneste prosjekter';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Kan ikke lagre instillingene fordi et døgn har kun 24 timer.';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Denne datoen er utenfor tillatt område. Men, du har ikke satt inn denne dagen ennå, så du får en(!) sjanse';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Ufullstendige arbeidsdager';
    $Self->{Translation}->{'Successful insert!'} = 'Vellykket innsetting!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Feil under innsetting av flere datoer!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Innsetting av registreringer for flere datoer var vellykket.';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Oppgitt dato var ugyldig! Dato endret til dagens dato.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '';
    $Self->{Translation}->{'Last Selected Projects'} = 'Seneste valgte prosjekter';
    $Self->{Translation}->{'All Projects'} = 'Alle prosjekter';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = '';
    $Self->{Translation}->{'Reporting Project'} = 'Prosjekt som rapporteres';
    $Self->{Translation}->{'Reporting'} = 'Rapportering';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Kan ikke endre brukerinnstillinger!';
    $Self->{Translation}->{'Project added!'} = 'Prosjekt lagt til!';
    $Self->{Translation}->{'Project updated!'} = 'Prosjekt oppdatert!';
    $Self->{Translation}->{'Task added!'} = 'Aktivitet lagt til!';
    $Self->{Translation}->{'Task updated!'} = 'Aktivitet oppdatert!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'BrukerID er ikke gyldig!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Kan ikke legge til brukerdata!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Kan ikke legge til tidsperiode!';
    $Self->{Translation}->{'Setting'} = 'Innstilling';
    $Self->{Translation}->{'User updated!'} = 'Bruker oppdatert!';
    $Self->{Translation}->{'User added!'} = 'Bruker lagt til!';
    $Self->{Translation}->{'Add a user to time accounting...'} = '';
    $Self->{Translation}->{'New User'} = 'Ny bruker';
    $Self->{Translation}->{'Period Status'} = 'Periodestatus';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Visning: Trenger %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Vennligst sett inn dine arbeidstimer!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Ufullstendige arbeidsdager';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Vennligst velg minst en dag!';
    $Self->{Translation}->{'Mass Entry'} = 'Masseregistrering';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Vennligst velg fraværsårsak!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Slett en tidsregistrering';
    $Self->{Translation}->{'Confirm insert'} = 'Bekreft innsetting';

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
