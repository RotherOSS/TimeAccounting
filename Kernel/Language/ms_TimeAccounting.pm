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

package Kernel::Language::ms_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Adakah anda pasti ingin menghapuskan Perakaunan Masa hari ini?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Sunting Rekod Masa';
    $Self->{Translation}->{'Go to settings'} = 'Pergi ke tetapan';
    $Self->{Translation}->{'Date Navigation'} = 'Navigasi Tarikh';
    $Self->{Translation}->{'Days without entries'} = 'Hari tanpa penyertaan';
    $Self->{Translation}->{'Select all days'} = 'Pilih kesemua hari';
    $Self->{Translation}->{'Mass entry'} = 'Kemasukan besar-besaran';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Pilih sebab ketidakhadiran anda untuk hari-hari yang dipilih';
    $Self->{Translation}->{'On vacation'} = 'Bercuti';
    $Self->{Translation}->{'On sick leave'} = 'Cuti sakit';
    $Self->{Translation}->{'On overtime leave'} = 'Bercuti lebih masa';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Medan yang diperlukan ditandai dengan "*".';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Anda perlu mengisi permulaan dan akhir masa atau tempoh masa.';
    $Self->{Translation}->{'Project'} = 'Projek';
    $Self->{Translation}->{'Task'} = 'Tugas';
    $Self->{Translation}->{'Remark'} = 'Komen';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Sila tambah komen dengan lebih daripada 8 karakter!';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Waktu negatif tidak dibenarkan.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Pengulangan jam adalah tidak dibenarkan. Masa mula padan dengan selang lain.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Format tidak sah! Sila masukkan masa dengan format HH:MM.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00 hanya dibenarkan sebagai masa akhir.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Masa tidak sah! Sehari hanya mempunyai 24 jam.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Masa tamat mesti selepas masa mula.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Pengulangan jam adalah tidak dibenarkan. Masa akhir padan dengan selang lain.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Tempoh tidak sah! Sehari hanya mempunyai 24 jam.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Tempoh sah mesti lebih besar daripada sifar.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Tempoh tidak sah! Tempoh negatif adalah tidak dibenarkan.';
    $Self->{Translation}->{'Add one row'} = 'Tambah satu baris';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Anda hanya boleh pilih satu elemen kotak semak!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Adakah anda pasti bahawa anda bekerja semasa anda bercuti sakit?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Adakah anda pasti bahawa anda bekerja semasa anda bercuti?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Adakah anda pasti bahawa anda bekerja semasa anda bercuti lebih masa?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Adakah anda pasti bahawa anda bekerja lebih daripada 16 jam?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Gambaran bulanan masa melaporkan';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Lebih masa (Jam)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Kerja lebih masa (bulan ini)';
    $Self->{Translation}->{'Overtime (total)'} = 'Kerja lebih masa (jumlah)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Baki cuti lebih masa';
    $Self->{Translation}->{'Vacation (Days)'} = 'Bercuti (Hari)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Cuti diambil (bulan ini)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Cuti diambil (jumlah)';
    $Self->{Translation}->{'Remaining vacation'} = 'Baki cuti';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Cuti Sakit (Hari)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Cuti sakit diambil (bulan ini)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Cuti sakit diambil (jumlah)';
    $Self->{Translation}->{'Previous month'} = 'Bulan sebelum';
    $Self->{Translation}->{'Next month'} = 'Bulan berikutnya';
    $Self->{Translation}->{'Weekday'} = 'Hari minggu';
    $Self->{Translation}->{'Working Hours'} = 'Jam bekerja';
    $Self->{Translation}->{'Total worked hours'} = 'Jumlah jam bekerja';
    $Self->{Translation}->{'User\'s project overview'} = 'Gambaran projek pengguna';
    $Self->{Translation}->{'Hours (monthly)'} = 'Jam (bulanan)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Jam (Hayat)';
    $Self->{Translation}->{'Grand total'} = 'Jumlah keseluruhan';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Masa melaporkan';
    $Self->{Translation}->{'Month Navigation'} = 'Navigasi bulan';
    $Self->{Translation}->{'Go to date'} = 'Pergi ke tarikh';
    $Self->{Translation}->{'User reports'} = 'Laporan pengguna';
    $Self->{Translation}->{'Monthly total'} = 'Jumlah bulanan';
    $Self->{Translation}->{'Lifetime total'} = 'Jumlah hayat';
    $Self->{Translation}->{'Overtime leave'} = 'Cuti lebih masa';
    $Self->{Translation}->{'Vacation'} = 'Bercuti';
    $Self->{Translation}->{'Sick leave'} = 'Cuti sakit';
    $Self->{Translation}->{'Vacation remaining'} = 'Baki cuti';
    $Self->{Translation}->{'Project reports'} = 'Laporan projek';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Laporan projek';
    $Self->{Translation}->{'Go to reporting overview'} = 'Pergi ke tinjauan melaporkan';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Pada masa ini hanya pengguna aktif dalam projek ini akan ditunjukkan. Untuk mengubah sifat ini, sila kemas kini tetapan:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Pada masa ini kesemua pengguna perakaunan masa ditunjukkan. Untuk mengubah tingkah laku ini, sila kemas kini tetapan:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Sunting Tetapan Projek Perakaunan Masa ';
    $Self->{Translation}->{'Add project'} = 'Tambah projek';
    $Self->{Translation}->{'Go to settings overview'} = 'Pergi ke gambaran keseluruhan tetapan';
    $Self->{Translation}->{'Add Project'} = 'Tambah projek';
    $Self->{Translation}->{'Edit Project Settings'} = 'Sunting tetapan projek';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Sudah ada projek dengan nama ini. Sila pilih yang lain.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Sunting Tetapan Perakaunan Masa';
    $Self->{Translation}->{'Add task'} = 'Tambah tugas';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = '';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Tempoh masa tidak boleh dihapuskan.';
    $Self->{Translation}->{'Project List'} = 'Senarai projek';
    $Self->{Translation}->{'Task List'} = 'Senarai tugas';
    $Self->{Translation}->{'Add Task'} = 'Tambah tugas';
    $Self->{Translation}->{'Edit Task Settings'} = 'Sunting tetapan tugas';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Sudah ada tugas dengan nama ini. Sila pilih yang lain.';
    $Self->{Translation}->{'User List'} = 'Senarai Pengguna';
    $Self->{Translation}->{'User Settings'} = '';
    $Self->{Translation}->{'User is allowed to see overtimes'} = '';
    $Self->{Translation}->{'Show Overtime'} = 'Tunjuk lebihan masa';
    $Self->{Translation}->{'User is allowed to create projects'} = '';
    $Self->{Translation}->{'Allow project creation'} = 'Benarkan ciptaan projek';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '';
    $Self->{Translation}->{'Allow time accounting skipping'} = '';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '';
    $Self->{Translation}->{'Time Spans'} = '';
    $Self->{Translation}->{'Period Begin'} = 'Tempoh Mula';
    $Self->{Translation}->{'Period End'} = 'Tempoh tamat';
    $Self->{Translation}->{'Days of Vacation'} = 'Hari Bercuti';
    $Self->{Translation}->{'Hours per Week'} = 'Jam Seminggu';
    $Self->{Translation}->{'Authorized Overtime'} = 'Lebihan masa dibenarkan';
    $Self->{Translation}->{'Start Date'} = 'Tarikh Mula';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Sila masukkan tarikh yang sah.';
    $Self->{Translation}->{'End Date'} = 'Tarikh Tamat';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Tempoh tamat mestilah selepas tempoh mula.';
    $Self->{Translation}->{'Leave Days'} = 'Hari cuti';
    $Self->{Translation}->{'Weekly Hours'} = 'Jam mingguan';
    $Self->{Translation}->{'Overtime'} = 'Lebih masa';
    $Self->{Translation}->{'No time periods found.'} = 'Tiada tempoh masa dijumpai.';
    $Self->{Translation}->{'Add time period'} = 'Tambah tempoh masa';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Lihat Rekod Masa';
    $Self->{Translation}->{'View of '} = 'Pandangan';
    $Self->{Translation}->{'Previous day'} = 'Hari sebelum';
    $Self->{Translation}->{'Next day'} = 'Hari seterusnya';
    $Self->{Translation}->{'No data found for this day.'} = 'Tiada data dijumpai pada hari ini.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Tidak boleh memasukkan Unit Kerja!';
    $Self->{Translation}->{'Last Projects'} = 'Projek Lepas';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Tidak boleh menyimpan tetapan-tetapan, kerana sehari hanya ada 24 jam!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Tidak boleh membuang Unit Kerja!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Tarikh ini telah terlebih had, tetapi anda masih belum memasukkan hari ini lagi, jadi anda mendapat satu(!) peluang untuk masukkan';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Hari Bekerja Tidak Lengkap';
    $Self->{Translation}->{'Successful insert!'} = 'Berjaya dimasukkan!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Ralat semasa memasukkan beberapa tarikh!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Berjaya dimasukkan penyertaan untuk beberapa tarikh!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Tarikh yang dimasukkan tidak sah! Tarikh telah ditukar kepada hari ini.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '';
    $Self->{Translation}->{'Last Selected Projects'} = 'Projek Dipilih Lepas';
    $Self->{Translation}->{'All Projects'} = 'Semua Projek';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'MelaporkanProjek: Perlukan ProjectID';
    $Self->{Translation}->{'Reporting Project'} = 'Melaporkan Projek';
    $Self->{Translation}->{'Reporting'} = 'Melaporkan';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Tidak boleh untuk kemaskini tetapan-tetapan pengguna!';
    $Self->{Translation}->{'Project added!'} = 'Projek telah ditambah!';
    $Self->{Translation}->{'Project updated!'} = 'Projek telah dikemaskini!';
    $Self->{Translation}->{'Task added!'} = 'Tugasan telah ditambah!';
    $Self->{Translation}->{'Task updated!'} = 'Tugasan telah dikemaskini!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'ID Pengguna tidak sah!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Tidak boleh memasukkan data pengguna!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Tidak boleh menambah tempoh masa!';
    $Self->{Translation}->{'Setting'} = 'Tetapan';
    $Self->{Translation}->{'User updated!'} = 'Pengguna telah dikemaskini!';
    $Self->{Translation}->{'User added!'} = 'Pengguna telah ditambah!';
    $Self->{Translation}->{'Add a user to time accounting...'} = '';
    $Self->{Translation}->{'New User'} = 'Pengguna Baharu';
    $Self->{Translation}->{'Period Status'} = 'Status Tempoh';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Pandangan: Perlu %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Sila masukkan waktu kerja anda! ';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Hari bekerja tidak lengkap';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Sila pilih sekurang-kurangnya sehari!';
    $Self->{Translation}->{'Mass Entry'} = 'Kemasukan besar-besaran';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Sila pilih sebab ketidakhadiran!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Padam Kemasukan Masa Perakaunan ';
    $Self->{Translation}->{'Confirm insert'} = 'Sahkan kemasukan';

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
