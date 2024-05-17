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

package Kernel::Language::sw_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Je unataka kufuta Uhasibu wa Muda kwa siku ya leo?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Hariri rekodi ya muda';
    $Self->{Translation}->{'Go to settings'} = 'Nenda kwenye mpangilio';
    $Self->{Translation}->{'Date Navigation'} = 'Uabiri wa tarehe';
    $Self->{Translation}->{'Days without entries'} = 'Siku zisizokuwa na maingizo';
    $Self->{Translation}->{'Select all days'} = 'Chagua siku zote';
    $Self->{Translation}->{'Mass entry'} = 'Ingizo la pamoja';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Tafadhali chagua sababu ya kutokuwepo kwa siku zilizo chaguliwa';
    $Self->{Translation}->{'On vacation'} = 'Katika likizo';
    $Self->{Translation}->{'On sick leave'} = 'Katika ruhusa ya wagonjwa';
    $Self->{Translation}->{'On overtime leave'} = 'Katika ruhusa ya muda wa nyongeza';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Sehemu zinazotakiwa zina alama "*"';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Unatakiwa kujaza muda wa kuanza na kumaliza au muda uliotumika.';
    $Self->{Translation}->{'Project'} = 'Mradi';
    $Self->{Translation}->{'Task'} = 'Kazi';
    $Self->{Translation}->{'Remark'} = 'Maoni';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = '';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Muda hasi hauruhusiwi.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Muda uliojirudia hauruhusiwi. Muda wa kuanza unafanana na muda mwingine.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Muundo batili! Tafadhali ingiza muda na muundo HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 inaruhusiwa katika muda wa kumaliza.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Muda batili! Siku ina masaa 24 tu.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Muda wa kumaliza lazima uwe baada ya muda wa kuanza.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Masaa yaliyojirudia hayaruhusiwi. Muda wa kumaliza unafanana muda mwingine.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Muda batili! Siku ina masaa 24 tu.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Muda halali una masaa zaidi ya sifuri.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Kipindi batili! Vipindi hasi haviruhusiwi.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Ongeza safu moja';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Unaweza kuchagua elementi moja katika cheki boksi';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Una uhakika ulifanya kazi wakati upo likizo ya wagonjwa?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Una uhakika ulifanya kazi wakati upo likizo?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Una uhakika ulifanya kazi wakati upo likizo ya muda wa nyongeza?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Una uhakika ulifanya kazi zaidi ya masaa 16?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Mapitio ya mwezi ya uarifu wa muda ';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Muda wa nyogneza (Masaa)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Muda wa nyongeza (mwezi huu)';
    $Self->{Translation}->{'Overtime (total)'} = 'Muda wa nyongeza (jumla)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Muda uliobaki wa likizo ya muda wa nyongeza';
    $Self->{Translation}->{'Vacation (Days)'} = 'Likizo (siku)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Likizo iliyochukuliwa (mwezi huu)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Likizo iliyochukuliwa (jumla)';
    $Self->{Translation}->{'Remaining vacation'} = 'Likizo iliyobaki';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Likizo ya wagonjwa (siku)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Likizo ya wagonjwa iliyochukuliwa (mwezi huu)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Likizo ya wagonjwa iliyochukuliwa (jumla)';
    $Self->{Translation}->{'Previous month'} = 'Mwezi uliopita';
    $Self->{Translation}->{'Next month'} = 'Mwezi ujao';
    $Self->{Translation}->{'Weekday'} = 'Siku za kazi';
    $Self->{Translation}->{'Working Hours'} = 'Masaa ya kazi';
    $Self->{Translation}->{'Total worked hours'} = 'Jumla ya masaa ya kazi';
    $Self->{Translation}->{'User\'s project overview'} = 'Mapitio ya mradi wa mtumiaji';
    $Self->{Translation}->{'Hours (monthly)'} = 'Masaa (kwa mwezi)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Masaa (muda wote)';
    $Self->{Translation}->{'Grand total'} = 'Jumla kuu';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Uarifu wa muda';
    $Self->{Translation}->{'Month Navigation'} = 'Uabiri wa mwezi';
    $Self->{Translation}->{'Go to date'} = 'Nenda tarehe';
    $Self->{Translation}->{'User reports'} = 'Ripoti za mtumiaji';
    $Self->{Translation}->{'Monthly total'} = 'Jumla ya mwezi';
    $Self->{Translation}->{'Lifetime total'} = 'Jumla ya muda wote';
    $Self->{Translation}->{'Overtime leave'} = 'Likizo ya muda wa nyongeza';
    $Self->{Translation}->{'Vacation'} = 'Likizo';
    $Self->{Translation}->{'Sick leave'} = 'Likizo ya wagonjwa';
    $Self->{Translation}->{'Vacation remaining'} = 'Likizo iliyobaki';
    $Self->{Translation}->{'Project reports'} = 'Ripoti za mradi';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Ripoti ya mradi';
    $Self->{Translation}->{'Go to reporting overview'} = 'Nenda kwenye mapitio ya uarifu';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Kwa sasa watumiaji amilifu tu katika mradi huu wataonyeshwa. Kubadilisha tabia hii, tafadhali sasisha mpangalio.';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Kwa sasa watumiaji wote wa muda uliohesabika wataonyeshwa. Kubadilisha tabia hii, tafadhali sasisha mpangalio.';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Hariri Uhasibu wa Muda kwenye mipangilio ya mradi';
    $Self->{Translation}->{'Add project'} = 'Ongeza mradi';
    $Self->{Translation}->{'Go to settings overview'} = 'Nenda kwenye mapitio ya mpangiio';
    $Self->{Translation}->{'Add Project'} = 'Ongeza mradi';
    $Self->{Translation}->{'Edit Project Settings'} = 'Hariri mipangilio ya mradi';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Tayari kuna mradi wenye hili jina. Tafadhali, chagua jengine.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Hariri mipangilio ya Uhasubu wa Muda';
    $Self->{Translation}->{'Add task'} = 'Ongeza kazi';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = '';
    $Self->{Translation}->{'Time periods can not be deleted.'} = '';
    $Self->{Translation}->{'Project List'} = 'Orodha ya miradi';
    $Self->{Translation}->{'Task List'} = 'Orodha ya kazi';
    $Self->{Translation}->{'Add Task'} = 'Ongeza kazi';
    $Self->{Translation}->{'Edit Task Settings'} = 'Hariri mipangilio ya kazi';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Tayari kuna kazi yenye hili jina. Tafadhali chagua jengine.';
    $Self->{Translation}->{'User List'} = 'Orodha ya mtumiaji';
    $Self->{Translation}->{'User Settings'} = '';
    $Self->{Translation}->{'User is allowed to see overtimes'} = '';
    $Self->{Translation}->{'Show Overtime'} = 'Onyesha muda wa nyongeza';
    $Self->{Translation}->{'User is allowed to create projects'} = '';
    $Self->{Translation}->{'Allow project creation'} = 'Ruhusu utengenezaji wa mradi';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '';
    $Self->{Translation}->{'Allow time accounting skipping'} = '';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '';
    $Self->{Translation}->{'Time Spans'} = '';
    $Self->{Translation}->{'Period Begin'} = 'Kuanza kwa kipengele';
    $Self->{Translation}->{'Period End'} = 'Kuisha kwa kipengele';
    $Self->{Translation}->{'Days of Vacation'} = 'Siku za likizo';
    $Self->{Translation}->{'Hours per Week'} = 'Masaa kwa wiki';
    $Self->{Translation}->{'Authorized Overtime'} = 'Muda wa nyongeza ulioruhusiwa';
    $Self->{Translation}->{'Start Date'} = 'Tarehe ya kuanza';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Tafadhali ingiza tarehe halali';
    $Self->{Translation}->{'End Date'} = 'Tarehe ya kumaliza';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Mwisho wa kipengele lazima uwe baada ya mwanzo wa kipengele';
    $Self->{Translation}->{'Leave Days'} = 'Siku za likizo';
    $Self->{Translation}->{'Weekly Hours'} = 'Masaa ya wiki';
    $Self->{Translation}->{'Overtime'} = 'Muda wa nyongeza';
    $Self->{Translation}->{'No time periods found.'} = 'Hakuna vipengele vya muda vilivyopatikana';
    $Self->{Translation}->{'Add time period'} = 'Ongeza kipengele cha muda';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Onyesha kipengele cha muda';
    $Self->{Translation}->{'View of '} = 'Muonekano wa';
    $Self->{Translation}->{'Previous day'} = 'Siku iliyopita';
    $Self->{Translation}->{'Next day'} = 'Siku inayofwata';
    $Self->{Translation}->{'No data found for this day.'} = 'Hakuna data zilizopatikana kwa siku hii';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '';
    $Self->{Translation}->{'Last Projects'} = '';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = '';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        '';
    $Self->{Translation}->{'Incomplete Working Days'} = '';
    $Self->{Translation}->{'Successful insert!'} = 'Ingizo limefanikiwa';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Kosa katika kuingiza tarehe zaidi ya moja!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Maingizo yaliyofanikiwa kwa tarehe zaidi ya moja!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Ingizo la tarehe ni batili! Tarehe imebadilishwa leo.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '';
    $Self->{Translation}->{'Last Selected Projects'} = '';
    $Self->{Translation}->{'All Projects'} = '';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = '';
    $Self->{Translation}->{'Reporting Project'} = '';
    $Self->{Translation}->{'Reporting'} = 'Uarifu';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = '';
    $Self->{Translation}->{'Project added!'} = '';
    $Self->{Translation}->{'Project updated!'} = '';
    $Self->{Translation}->{'Task added!'} = '';
    $Self->{Translation}->{'Task updated!'} = '';
    $Self->{Translation}->{'The UserID is not valid!'} = '';
    $Self->{Translation}->{'Can\'t insert user data!'} = '';
    $Self->{Translation}->{'Unable to add time period!'} = '';
    $Self->{Translation}->{'Setting'} = 'Mpangilio';
    $Self->{Translation}->{'User updated!'} = '';
    $Self->{Translation}->{'User added!'} = '';
    $Self->{Translation}->{'Add a user to time accounting...'} = '';
    $Self->{Translation}->{'New User'} = '';
    $Self->{Translation}->{'Period Status'} = '';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = '';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Tafadhali ingiza massaa ya kazi!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = '';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Tafadhali chagua japo siku moja';
    $Self->{Translation}->{'Mass Entry'} = 'Ingizo la pamoja';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Tafadhali chagua sababu ya kuto kuwepo!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Futa ingizo la Uhasibu wa Muda';
    $Self->{Translation}->{'Confirm insert'} = 'Hakiki ingizo';

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
