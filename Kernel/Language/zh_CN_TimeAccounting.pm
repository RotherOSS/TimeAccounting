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

package Kernel::Language::zh_CN_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        '请确认你真的希望删除这一天的工时管理记录？';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = '编辑时间记录';
    $Self->{Translation}->{'Go to settings'} = '进入设置';
    $Self->{Translation}->{'Date Navigation'} = '日期浏览';
    $Self->{Translation}->{'Days without entries'} = '没有记录的工日';
    $Self->{Translation}->{'Select all days'} = '选择所有工日。';
    $Self->{Translation}->{'Mass entry'} = '大量记录';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        '请为所选时间选择缺勤原因。';
    $Self->{Translation}->{'On vacation'} = '休假';
    $Self->{Translation}->{'On sick leave'} = '病假';
    $Self->{Translation}->{'On overtime leave'} = '加班调休';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = '标记"*"的字段为必填。';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = '你需要填写开始和结束时间或者时间段。';
    $Self->{Translation}->{'Project'} = '项目';
    $Self->{Translation}->{'Task'} = '任务';
    $Self->{Translation}->{'Remark'} = '备注';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = '请添加一个超过8个字符的备注！';
    $Self->{Translation}->{'Negative times are not allowed.'} = '时间不允许为负。';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        '不允许重复的工作时间。开始时间已匹配其他存在的时段。';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = '格式无效！请按HH:MM格式输入时间。';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = '24:00只允许设置为结束时间。';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = '时间无效！一天只有24小时。';
    $Self->{Translation}->{'End time must be after start time.'} = '结束时间应大于开始时间。';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        '不允许重复的工作时间。结束时间已匹配其他存在的时段。';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = '无效的时段！一天只有24小时。';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = '有效时段时长应大于0。';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = '无效时段！时段时长不允许为负。';
    $Self->{Translation}->{'Add one row'} = '增加一行';
    $Self->{Translation}->{'You can only select one checkbox element!'} = '只能选择一个复选框元素。';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = '你确定你在病假期间仍在工作吗？';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = '你确定你在休假期间仍在工作吗？';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        '你确定你在加班调休期间仍在工作吗？';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = '你确定你工作超过16小时了吗？';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = '工时报告月度概览';
    $Self->{Translation}->{'Overtime (Hours)'} = '加班（小时）';
    $Self->{Translation}->{'Overtime (this month)'} = '加班（本月）';
    $Self->{Translation}->{'Overtime (total)'} = '加班（合计）';
    $Self->{Translation}->{'Remaining overtime leave'} = '剩余的加班调休';
    $Self->{Translation}->{'Vacation (Days)'} = '休假（天）';
    $Self->{Translation}->{'Vacation taken (this month)'} = '已休假（本月）';
    $Self->{Translation}->{'Vacation taken (total)'} = '已休假（合计）';
    $Self->{Translation}->{'Remaining vacation'} = '剩余的假期';
    $Self->{Translation}->{'Sick Leave (Days)'} = '病假（天）';
    $Self->{Translation}->{'Sick leave taken (this month)'} = '已休病假（本月）';
    $Self->{Translation}->{'Sick leave taken (total)'} = '已休病假（合计）';
    $Self->{Translation}->{'Previous month'} = '上一月';
    $Self->{Translation}->{'Next month'} = '下一月';
    $Self->{Translation}->{'Weekday'} = '工作日';
    $Self->{Translation}->{'Working Hours'} = '工作时间';
    $Self->{Translation}->{'Total worked hours'} = '工作时间合计';
    $Self->{Translation}->{'User\'s project overview'} = '用户的项目概览';
    $Self->{Translation}->{'Hours (monthly)'} = '小时（按月）';
    $Self->{Translation}->{'Hours (Lifetime)'} = '小时（自入职计算）';
    $Self->{Translation}->{'Grand total'} = '总计';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = '时间报告';
    $Self->{Translation}->{'Month Navigation'} = '按月浏览';
    $Self->{Translation}->{'Go to date'} = '跳转到日期';
    $Self->{Translation}->{'User reports'} = '用户报告';
    $Self->{Translation}->{'Monthly total'} = '按月合计';
    $Self->{Translation}->{'Lifetime total'} = '自入职计算合计';
    $Self->{Translation}->{'Overtime leave'} = '加班调休';
    $Self->{Translation}->{'Vacation'} = '休假';
    $Self->{Translation}->{'Sick leave'} = '病假';
    $Self->{Translation}->{'Vacation remaining'} = '剩余假期';
    $Self->{Translation}->{'Project reports'} = '项目报告';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = '项目报告';
    $Self->{Translation}->{'Go to reporting overview'} = '进入报告概览';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        '当前仅显示项目中的激活用户。如要调整显示属性，请更新设置：';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        '当前显示所有的工时管理用户。如要调整显示属性，请更新设置：';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = '编辑工时管理项目设置';
    $Self->{Translation}->{'Add project'} = '新建项目';
    $Self->{Translation}->{'Go to settings overview'} = '进入设置概览';
    $Self->{Translation}->{'Add Project'} = '新建项目';
    $Self->{Translation}->{'Edit Project Settings'} = '编辑项目设置';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        '已存在同名的项目，请选择不同的名字。';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = '编辑工时管理设置';
    $Self->{Translation}->{'Add task'} = '添加任务';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = '按项目、任务或用户过滤';
    $Self->{Translation}->{'Time periods can not be deleted.'} = '无法删除工时周期。';
    $Self->{Translation}->{'Project List'} = '项目列表';
    $Self->{Translation}->{'Task List'} = '任务列表';
    $Self->{Translation}->{'Add Task'} = '添加任务';
    $Self->{Translation}->{'Edit Task Settings'} = '编辑任务设置';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        '已存在同名的任务，请选择不同的名字。';
    $Self->{Translation}->{'User List'} = '用户列表';
    $Self->{Translation}->{'User Settings'} = '用户设置';
    $Self->{Translation}->{'User is allowed to see overtimes'} = '允许用户看到加班时间';
    $Self->{Translation}->{'Show Overtime'} = '显示加班';
    $Self->{Translation}->{'User is allowed to create projects'} = '允许用户创建项目';
    $Self->{Translation}->{'Allow project creation'} = '允许创建项目';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = '允许用户跳过工时管理';
    $Self->{Translation}->{'Allow time accounting skipping'} = '允许跳过工时管理';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        '如果选择此选项，则工时管理对用户来说实际上是可选的。';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        '没有关于缺少条目的警告，也没有进入强制执行的警告。';
    $Self->{Translation}->{'Time Spans'} = '时间跨度';
    $Self->{Translation}->{'Period Begin'} = '时段开始';
    $Self->{Translation}->{'Period End'} = '时段结束';
    $Self->{Translation}->{'Days of Vacation'} = '休假天数';
    $Self->{Translation}->{'Hours per Week'} = '每周小时数';
    $Self->{Translation}->{'Authorized Overtime'} = '批准的加班';
    $Self->{Translation}->{'Start Date'} = '开始日期';
    $Self->{Translation}->{'Please insert a valid date.'} = '请插入有效日期。';
    $Self->{Translation}->{'End Date'} = '结束日期';
    $Self->{Translation}->{'Period end must be after period begin.'} = '时段结束时间应大于时段开始时间。';
    $Self->{Translation}->{'Leave Days'} = '缺勤天数';
    $Self->{Translation}->{'Weekly Hours'} = '每周工作小时数';
    $Self->{Translation}->{'Overtime'} = '加班';
    $Self->{Translation}->{'No time periods found.'} = '没有找到时段。';
    $Self->{Translation}->{'Add time period'} = '增加时段';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = '查看工时记录';
    $Self->{Translation}->{'View of '} = '展示';
    $Self->{Translation}->{'Previous day'} = '前一天';
    $Self->{Translation}->{'Next day'} = '后一天';
    $Self->{Translation}->{'No data found for this day.'} = '没有找到这一天的数据。';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = '无法插入工作单位！';
    $Self->{Translation}->{'Last Projects'} = '最近的项目';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = '无法保存设置，因为一天只有24小时！';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = '无法删除工作单位！';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        '这个日期不受限制，但是你还没有插入这一天，所以你获得了一个（！）机会来插入';
    $Self->{Translation}->{'Incomplete Working Days'} = '不完整的工作日';
    $Self->{Translation}->{'Successful insert!'} = '插入成功！';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = '插入多个时间时出现错误！';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = '成功插入记录。';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = '输入时间无效！日期改为当前日期。';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        '没有配置时间段，或指定的日期不在定义的时间段内。';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        '请联系工时管理员更新您的时间段！';
    $Self->{Translation}->{'Last Selected Projects'} = '最后被选中的项目';
    $Self->{Translation}->{'All Projects'} = '所有项目';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = '项目报告：需要项目ID';
    $Self->{Translation}->{'Reporting Project'} = '项目报告';
    $Self->{Translation}->{'Reporting'} = '报告';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = '无法更新用户设置！';
    $Self->{Translation}->{'Project added!'} = '项目已添加！';
    $Self->{Translation}->{'Project updated!'} = '项目已更新！';
    $Self->{Translation}->{'Task added!'} = '任务已添加！';
    $Self->{Translation}->{'Task updated!'} = '任务已更新！';
    $Self->{Translation}->{'The UserID is not valid!'} = 'UserID无效！';
    $Self->{Translation}->{'Can\'t insert user data!'} = '无法插入用户数据！';
    $Self->{Translation}->{'Unable to add time period!'} = '无法添加时间段！';
    $Self->{Translation}->{'Setting'} = '设置';
    $Self->{Translation}->{'User updated!'} = '用户已更新！';
    $Self->{Translation}->{'User added!'} = '用户已添加！';
    $Self->{Translation}->{'Add a user to time accounting...'} = '添加一个用户到工时管理...';
    $Self->{Translation}->{'New User'} = '添加用户';
    $Self->{Translation}->{'Period Status'} = '时段状态';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = '视图：需要%s！';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = '请插入工作时间';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = '不完整的工作日';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = '请至少选择一天！';
    $Self->{Translation}->{'Mass Entry'} = '大量记录';
    $Self->{Translation}->{'Please choose a reason for absence!'} = '请选择缺席原因！';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = '删除工时管理记录';
    $Self->{Translation}->{'Confirm insert'} = '确认插入';

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
