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

package Kernel::Language::ja_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        '本当に該当日の情報を削除しますか？';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'タイムレコードの編集';
    $Self->{Translation}->{'Go to settings'} = '設定へ';
    $Self->{Translation}->{'Date Navigation'} = '日別ナビゲーション';
    $Self->{Translation}->{'Days without entries'} = 'エントリーのない日';
    $Self->{Translation}->{'Select all days'} = '全ての日を選択';
    $Self->{Translation}->{'Mass entry'} = '全体入力';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        '該当の日の欠勤理由を入力してください';
    $Self->{Translation}->{'On vacation'} = '休暇取得中';
    $Self->{Translation}->{'On sick leave'} = '病欠中';
    $Self->{Translation}->{'On overtime leave'} = '代休中';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = '* の項目は入力必須です。';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = '開始時間と終了時間、または期間を指定してください。';
    $Self->{Translation}->{'Project'} = 'プロジェクト';
    $Self->{Translation}->{'Task'} = 'タスク';
    $Self->{Translation}->{'Remark'} = '注釈';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = '8文字以上の注釈を追加してください。';
    $Self->{Translation}->{'Negative times are not allowed.'} = '－（マイナス）の時間は入力できません';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        '繰り返された時間は許可されません。開始時刻は別の間隔と一致します。';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = '不正なフォーマットです! 時間の入力はHH:MMのフォーマットに従ってください';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00は終了時間としてのみ入力可能です';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = '不正な時間です! 1日は24時間です';
    $Self->{Translation}->{'End time must be after start time.'} = '終了時間の前に開始時間を設定することはできません。';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Diese Endzeit wurde bereits in einem anderen Eintrag angegeben.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = '「期間」の設定が不正です。（24時間以上は許可されません）';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = '「期間」の設定が不正です。（0は許可されません）';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = '「期間」の設定が不正です。（－（マイナス）は許可されません）';
    $Self->{Translation}->{'Add one row'} = '行の追加';
    $Self->{Translation}->{'You can only select one checkbox element!'} = '1項目のみ選択できます。';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = '病欠に設定された期間中に稼働しましたか？';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = '休暇に設定された期間中に稼働しましたか？';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        '代休に設定された期間中に稼働しましたか？';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = '16時間以上稼働しましたか？';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = '月別一覧';
    $Self->{Translation}->{'Overtime (Hours)'} = '超過勤務（：時間）';
    $Self->{Translation}->{'Overtime (this month)'} = '超過勤務（今月）';
    $Self->{Translation}->{'Overtime (total)'} = '超過勤務（累計）';
    $Self->{Translation}->{'Remaining overtime leave'} = '超過勤務可能残（時間）';
    $Self->{Translation}->{'Vacation (Days)'} = '休暇（日数）';
    $Self->{Translation}->{'Vacation taken (this month)'} = '休暇取得日数（今月）';
    $Self->{Translation}->{'Vacation taken (total)'} = '休暇取得日数（累計）';
    $Self->{Translation}->{'Remaining vacation'} = '休暇取得残日数';
    $Self->{Translation}->{'Sick Leave (Days)'} = '病欠（日数）';
    $Self->{Translation}->{'Sick leave taken (this month)'} = '病欠日数（今月）';
    $Self->{Translation}->{'Sick leave taken (total)'} = '病欠日数（累計）';
    $Self->{Translation}->{'Previous month'} = '前月';
    $Self->{Translation}->{'Next month'} = '次月';
    $Self->{Translation}->{'Weekday'} = '曜日';
    $Self->{Translation}->{'Working Hours'} = '稼働時間';
    $Self->{Translation}->{'Total worked hours'} = '総稼働時間';
    $Self->{Translation}->{'User\'s project overview'} = 'ユーザーのプロジェクト一覧';
    $Self->{Translation}->{'Hours (monthly)'} = '時間（今月）';
    $Self->{Translation}->{'Hours (Lifetime)'} = '時間（通算）';
    $Self->{Translation}->{'Grand total'} = '合計';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = '時間会計レポート';
    $Self->{Translation}->{'Month Navigation'} = '月別ナビゲーション';
    $Self->{Translation}->{'Go to date'} = '日付に移動する';
    $Self->{Translation}->{'User reports'} = 'ユーザ・レポート';
    $Self->{Translation}->{'Monthly total'} = '月合計';
    $Self->{Translation}->{'Lifetime total'} = '通算合計';
    $Self->{Translation}->{'Overtime leave'} = '代休';
    $Self->{Translation}->{'Vacation'} = '休暇';
    $Self->{Translation}->{'Sick leave'} = '病欠';
    $Self->{Translation}->{'Vacation remaining'} = '休日残日数';
    $Self->{Translation}->{'Project reports'} = 'プロジェクト・レポート';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'プロジェクト・レポート';
    $Self->{Translation}->{'Go to reporting overview'} = '報告の概要に移動する';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        '本プロジェクトのアクティブユーザーのみ表示しています、変更するには設定を更新してください。';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'すべてのタイムアカウントユーザーを表示しています、変更するには設定を更新してください。';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = '時間会計 プロジェクト設定の編集';
    $Self->{Translation}->{'Add project'} = '新規プロジェクトの追加';
    $Self->{Translation}->{'Go to settings overview'} = '設定に移動する';
    $Self->{Translation}->{'Add Project'} = '新規プロジェクトの追加';
    $Self->{Translation}->{'Edit Project Settings'} = 'プロジェクトの編集';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        '同名のプロジェクトが存在します。名称を変更してください。';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = '設定の編集';
    $Self->{Translation}->{'Add task'} = '新規タスクの追加';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'プロジェクト、タスク、またはユーザーのフィルタリング';
    $Self->{Translation}->{'Time periods can not be deleted.'} = '時間は削除できません';
    $Self->{Translation}->{'Project List'} = 'プロジェクト一覧';
    $Self->{Translation}->{'Task List'} = 'タスク一覧';
    $Self->{Translation}->{'Add Task'} = '新規タスクの追加';
    $Self->{Translation}->{'Edit Task Settings'} = 'タスク設定';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        '同名のタスクが存在します。名称を変更してください。';
    $Self->{Translation}->{'User List'} = 'ユーザ一覧';
    $Self->{Translation}->{'User Settings'} = 'ユーザー設定';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'ユーザーはオーバータイムを見ることができます。';
    $Self->{Translation}->{'Show Overtime'} = '超過勤務を表示';
    $Self->{Translation}->{'User is allowed to create projects'} = 'ユーザーはプロジェクトを作成できます。';
    $Self->{Translation}->{'Allow project creation'} = 'プロジェクトの新規追加を許可する';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'ユーザーはタイムアカウンティングのスキップを許可されます。';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'タイムアカウンティングのスキップを許可する';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'このオプションが選択されると、ユーザーに対するタイムアカウンティングがオプション項目扱いとなります。';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '未入力のエントリに対する警告や、エントリへの入力を強制する表示はなくなります。';
    $Self->{Translation}->{'Time Spans'} = '期間';
    $Self->{Translation}->{'Period Begin'} = '開始点';
    $Self->{Translation}->{'Period End'} = '終了点';
    $Self->{Translation}->{'Days of Vacation'} = '休暇';
    $Self->{Translation}->{'Hours per Week'} = '時間 / 週';
    $Self->{Translation}->{'Authorized Overtime'} = '承認済の超過勤務';
    $Self->{Translation}->{'Start Date'} = 'スタート日付';
    $Self->{Translation}->{'Please insert a valid date.'} = '正しい日付を入力してください';
    $Self->{Translation}->{'End Date'} = '終了時間';
    $Self->{Translation}->{'Period end must be after period begin.'} = '終了点の前に開始点を設定することはできません。';
    $Self->{Translation}->{'Leave Days'} = '休暇日数';
    $Self->{Translation}->{'Weekly Hours'} = '週あたりの時間';
    $Self->{Translation}->{'Overtime'} = '残業時間';
    $Self->{Translation}->{'No time periods found.'} = '期間が未設定です。';
    $Self->{Translation}->{'Add time period'} = '期間を追加してください。';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'タイム・レコードを表示';
    $Self->{Translation}->{'View of '} = '一覧';
    $Self->{Translation}->{'Previous day'} = '前の日';
    $Self->{Translation}->{'Next day'} = '次の日';
    $Self->{Translation}->{'No data found for this day.'} = '該当するデータがありません。';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '工数を挿入できません！';
    $Self->{Translation}->{'Last Projects'} = '前プロジェクト';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = '不正な時間です! 1日は24時間です';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '工数を削除できません！';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        '入力された日付は期間外ですので、挿入する事はできませんでした。もう一度(!)日付を入力してください。';
    $Self->{Translation}->{'Incomplete Working Days'} = '未完了の可動日';
    $Self->{Translation}->{'Successful insert!'} = '入力に成功しました!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = '複数日を入力中にエラーが発生しました !';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = '複数日にわたる稼働実績の入力に成功しました !';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = '入力された日付は不正です ! 日付は本日に変更されました';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '指定された期間が設定されていないか、または指定された日付が定義された期間外です。';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '勤怠管理担当者に連絡して期間を更新してください！';
    $Self->{Translation}->{'Last Selected Projects'} = '前回選択されたプロジェクト';
    $Self->{Translation}->{'All Projects'} = '全プロジェクト';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'ReportingProject: プロジェクトIDの入力が必要です。';
    $Self->{Translation}->{'Reporting Project'} = 'プロジェクトを報告する';
    $Self->{Translation}->{'Reporting'} = '報告する';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'ユーザー設定を更新できません！';
    $Self->{Translation}->{'Project added!'} = 'プロジェクトを追加しました！';
    $Self->{Translation}->{'Project updated!'} = 'プロジェクトを更新しました！';
    $Self->{Translation}->{'Task added!'} = 'タスクを追加しました！';
    $Self->{Translation}->{'Task updated!'} = 'タスクを更新しました！';
    $Self->{Translation}->{'The UserID is not valid!'} = 'UserID が無効です！';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'ユーザーデータが挿入できません！';
    $Self->{Translation}->{'Unable to add time period!'} = '期間を追加できません！';
    $Self->{Translation}->{'Setting'} = '設定';
    $Self->{Translation}->{'User updated!'} = 'ユーザーを更新しました！';
    $Self->{Translation}->{'User added!'} = 'ユーザーを追加しました！';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'タイムアカウンティングにユーザーを追加...';
    $Self->{Translation}->{'New User'} = '新規ユーザー';
    $Self->{Translation}->{'Period Status'} = '期間の状態';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = '注目！： %s の入力が必要です。';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = '勤務実績を入力してください';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = '未完了の可動日';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = '少なくとも一日は選択してください';
    $Self->{Translation}->{'Mass Entry'} = '全体入力';
    $Self->{Translation}->{'Please choose a reason for absence!'} = '欠勤理由を選択してください';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'エントリーを削除';
    $Self->{Translation}->{'Confirm insert'} = '挿入の確認';

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
