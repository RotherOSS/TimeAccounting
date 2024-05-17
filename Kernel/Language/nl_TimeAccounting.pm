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

package Kernel::Language::nl_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Weet u zeker dat u de Time Accounting wilt verwijderen van deze dag?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = '';
    $Self->{Translation}->{'Go to settings'} = 'Ga naar instellingen';
    $Self->{Translation}->{'Date Navigation'} = 'Datum Navigatie';
    $Self->{Translation}->{'Days without entries'} = 'Dag zonder boeking';
    $Self->{Translation}->{'Select all days'} = 'Selecteer alle dagen';
    $Self->{Translation}->{'Mass entry'} = 'Massa toevoegen';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Kies een reden van absentie voor de geselecteerde dagen';
    $Self->{Translation}->{'On vacation'} = 'Op vakantie';
    $Self->{Translation}->{'On sick leave'} = 'Ziekmelding';
    $Self->{Translation}->{'On overtime leave'} = '';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Verplichte velden zijn gemarkeerd met "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'U moet een begin en eindtijd of een tijdperiode invullen.';
    $Self->{Translation}->{'Project'} = 'Project';
    $Self->{Translation}->{'Task'} = 'Taak';
    $Self->{Translation}->{'Remark'} = 'Aanmerking';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = '';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Negatieve tijden zijn niet toegestaan.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        '';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Ongeldig formaat! Voer een tijd in met het formaat HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Ongeldige tijd! Een dag heeft 24 uur.';
    $Self->{Translation}->{'End time must be after start time.'} = '';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        '';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = '';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = '';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = '';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = '';
    $Self->{Translation}->{'You can only select one checkbox element!'} = '';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = '';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = '';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        '';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = '';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = '';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Overuren (Uren)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Overuren (deze maand)';
    $Self->{Translation}->{'Overtime (total)'} = 'Overuren (totaal)';
    $Self->{Translation}->{'Remaining overtime leave'} = '';
    $Self->{Translation}->{'Vacation (Days)'} = 'Vakantie (dagen)';
    $Self->{Translation}->{'Vacation taken (this month)'} = '';
    $Self->{Translation}->{'Vacation taken (total)'} = '';
    $Self->{Translation}->{'Remaining vacation'} = '';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Ziektedagen (Dagen)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Ziektedagen (deze maand)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Ziektedagen opgenomen (totaal)';
    $Self->{Translation}->{'Previous month'} = 'Vorige maand';
    $Self->{Translation}->{'Next month'} = 'Volgende maand';
    $Self->{Translation}->{'Weekday'} = 'Weekdag';
    $Self->{Translation}->{'Working Hours'} = 'Werkuren';
    $Self->{Translation}->{'Total worked hours'} = 'Totale werkuren';
    $Self->{Translation}->{'User\'s project overview'} = '';
    $Self->{Translation}->{'Hours (monthly)'} = 'Uren (Maandelijks)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Uren (Levensduur)';
    $Self->{Translation}->{'Grand total'} = 'Totaal';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = '';
    $Self->{Translation}->{'Month Navigation'} = 'Maandelijkse Navigatie';
    $Self->{Translation}->{'Go to date'} = 'Ga naar datum';
    $Self->{Translation}->{'User reports'} = '';
    $Self->{Translation}->{'Monthly total'} = '';
    $Self->{Translation}->{'Lifetime total'} = '';
    $Self->{Translation}->{'Overtime leave'} = '';
    $Self->{Translation}->{'Vacation'} = 'Vakantie';
    $Self->{Translation}->{'Sick leave'} = 'Ziektedag';
    $Self->{Translation}->{'Vacation remaining'} = '';
    $Self->{Translation}->{'Project reports'} = '';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = '';
    $Self->{Translation}->{'Go to reporting overview'} = '';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        '';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        '';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = '';
    $Self->{Translation}->{'Add project'} = '';
    $Self->{Translation}->{'Go to settings overview'} = '';
    $Self->{Translation}->{'Add Project'} = '';
    $Self->{Translation}->{'Edit Project Settings'} = '';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        '';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = '';
    $Self->{Translation}->{'Add task'} = 'Taak toevoegen';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = '';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Tijdperiodes kunnen niet worden verwijderd.';
    $Self->{Translation}->{'Project List'} = '';
    $Self->{Translation}->{'Task List'} = '';
    $Self->{Translation}->{'Add Task'} = 'Taak toevoegen';
    $Self->{Translation}->{'Edit Task Settings'} = '';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        '';
    $Self->{Translation}->{'User List'} = 'Gebruikerslijst';
    $Self->{Translation}->{'User Settings'} = '';
    $Self->{Translation}->{'User is allowed to see overtimes'} = '';
    $Self->{Translation}->{'Show Overtime'} = 'Toon Overuren';
    $Self->{Translation}->{'User is allowed to create projects'} = '';
    $Self->{Translation}->{'Allow project creation'} = '';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '';
    $Self->{Translation}->{'Allow time accounting skipping'} = '';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '';
    $Self->{Translation}->{'Time Spans'} = '';
    $Self->{Translation}->{'Period Begin'} = 'Beginperiode';
    $Self->{Translation}->{'Period End'} = 'Eindperiode';
    $Self->{Translation}->{'Days of Vacation'} = 'Vakantiedagen';
    $Self->{Translation}->{'Hours per Week'} = 'Uren per week';
    $Self->{Translation}->{'Authorized Overtime'} = '';
    $Self->{Translation}->{'Start Date'} = 'Begindatum';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Voer een geldige datum in.';
    $Self->{Translation}->{'End Date'} = 'Einddatum';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Eindperiode moet na Beginperiode zijn.';
    $Self->{Translation}->{'Leave Days'} = '';
    $Self->{Translation}->{'Weekly Hours'} = 'Weekuren';
    $Self->{Translation}->{'Overtime'} = 'Overuren';
    $Self->{Translation}->{'No time periods found.'} = 'Geen tijdperiodes gevonden.';
    $Self->{Translation}->{'Add time period'} = 'Voeg tijdperiode toe';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = '';
    $Self->{Translation}->{'View of '} = 'Weergave van';
    $Self->{Translation}->{'Previous day'} = 'Vorige dag';
    $Self->{Translation}->{'Next day'} = 'Volgende dag';
    $Self->{Translation}->{'No data found for this day.'} = 'Geen data gevonden voor deze dag.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '';
    $Self->{Translation}->{'Last Projects'} = 'Laatste Projecten';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = '';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        '';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Incomplete Werkdagen';
    $Self->{Translation}->{'Successful insert!'} = 'Succesvol ingevoerd!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Fout tijdens invoeren meerdere data!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Succesvol invoeren van meerdere data!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Ingevoerde data is goedgekeurd! Data is aangepast naar vandaag.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '';
    $Self->{Translation}->{'Last Selected Projects'} = 'Laatst Geselecteerde Projecten';
    $Self->{Translation}->{'All Projects'} = 'Alle Projecten';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = '';
    $Self->{Translation}->{'Reporting Project'} = '';
    $Self->{Translation}->{'Reporting'} = 'Rapportage';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = '';
    $Self->{Translation}->{'Project added!'} = '';
    $Self->{Translation}->{'Project updated!'} = '';
    $Self->{Translation}->{'Task added!'} = '';
    $Self->{Translation}->{'Task updated!'} = '';
    $Self->{Translation}->{'The UserID is not valid!'} = '';
    $Self->{Translation}->{'Can\'t insert user data!'} = '';
    $Self->{Translation}->{'Unable to add time period!'} = '';
    $Self->{Translation}->{'Setting'} = 'Instelling';
    $Self->{Translation}->{'User updated!'} = '';
    $Self->{Translation}->{'User added!'} = '';
    $Self->{Translation}->{'Add a user to time accounting...'} = '';
    $Self->{Translation}->{'New User'} = 'Nieuwe Gebruiker';
    $Self->{Translation}->{'Period Status'} = 'Periode Status';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = '';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Voer uw werkuren in!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Incomplete Werkdagen';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Kies op zijn minst 1 dag!';
    $Self->{Translation}->{'Mass Entry'} = '';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Kies een reden van absentie!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = '';
    $Self->{Translation}->{'Confirm insert'} = '';

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
