.. image:: ../images/otobo-logo.png
   :align: center
|

.. toctree::
    :maxdepth: 2
    :caption: Contents

Sacrifice to Sphinx
===================

Description
===========
A Time Registration Module.

System requirements
===================

Framework
---------
OTOBO 10.1.x

Packages
--------
\-

Third-party software
--------------------
\-

Usage
=====

Setup
-----

Configuration Reference
-----------------------

Core::Stats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Stats::DynamicObjectRegistration###TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Determines if the statistics module may generate time accounting information.

Core::Ticket
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::EventModulePost###999-TimeAccountingTicketTimeUnitsSync
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Every time a agent add TimeUnits to a ticket, we sync the information to the timeaccounting module.

TimeAccounting::TicketSync::ServiceToAction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Use Service as Action. Please add as key the timeacounting action and the service as value. RegEx are allowed.

Core::TimeAccounting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TimeAccounting::MaxIntervalOfIncompleteDays
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Maximum number of working days after which the working units have to be inserted.

TimeAccounting::MaxIntervalOfIncompleteDaysBeforeWarning
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Maximum number of working days without working units entry after which a warning will be shown.

TimeAccounting::MaxAllowedInsertDays
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
For how many days ago you can insert working units.

Core::TimeAccounting::TicketSync
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TimeAccounting::TicketSync::Enable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Activate the synchronisation of Ticket-TimeUnits into the TimeAccounting module.

TimeAccounting::TicketSync::SetEntryReadOnly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
As soon as the synchronisation of ticket TimeUnits is activated, it is possible to set the entries ReadOnly.

TimeAccounting::TicketSync::CreateProjectFromCustomerID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Synchronise customers as a new project if they exists in the customer database.

TimeAccounting::TicketSync::CreateProjectFromTMPCustomerID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Also synchronise customers as a new project if they have not yet been created in the customer database.

TimeAccounting::TicketSync::SaveTimeUnitToArticleField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
We save the Article TimeUnit to a DynamicField from type "Article". Please add here the name of the field if the initinal name is changed.

Core::TimeAccounting::ViewReportingProject
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TimeAccounting::Frontend::ReportingProject###ShowOnlyActiveUsers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If enabled, only users that has added working time to the selected project are shown.

Frontend::Agent::FrontendNotification
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::NotifyModule###888-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
This notification module gives a warning if there are too many incomplete working days.

Frontend::Agent::ModuleRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Module###AgentTimeAccountingReporting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentTimeAccountingEdit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentTimeAccountingSetting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentTimeAccountingOverview
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentTimeAccountingView
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Agent::ModuleRegistration::Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Loader::Module::AgentTimeAccountingSetting###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTimeAccountingOverview###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTimeAccountingEdit###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTimeAccountingReporting###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTimeAccountingView###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Frontend::Agent::ModuleRegistration::MainMenu
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Navigation###AgentTimeAccountingEdit###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentTimeAccountingOverview###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentTimeAccountingSetting###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentTimeAccountingReporting###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Navigation###AgentTimeAccountingView###002-TimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Main menu item registration.

Frontend::Agent::Ticket::ViewActivityRecording
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TimeAccounting::TicketSync::DefaultProjectID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
We need to set a default project id when we sync TimeUnits to the TimeAccounting module.

TimeAccounting::TicketSync::DefaultActionID
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
We need to set a default action id when we sync TimeUnits to the TimeAccounting module.

Frontend::Agent::ToolBar
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::ToolBarModule###201-TimeAccounting::IncompleteWorkingDays
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Agent interface notification module to see the number of incomplete working days for the user.

Frontend::Agent::View::TimeAccountingEdit
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TimeAccounting::ReduceTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
To use if some actions reduced the working hours (for example, if only half of the traveling time is paid Key => traveling; Content => 50).

TimeAccounting::InputHoursWithoutStartEndTime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Specifies if working hours can be inserted without start and end times.

TimeAccounting::Project2RemarkRegExp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the projects for which a remark is required. If the RegExp matches on the project, you have to insert a remark too. The RegExp use the smx parameter.

TimeAccounting::ProjectListConstraints
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Regular expressions for constraining project list according to user groups. Key contains regular expression for project(s), content contains comma separated list of groups.

TimeAccounting::ActionListConstraints
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Regular expressions for constraining action list according to selected project. Key contains regular expression for project(s), content contains regular expressions for action(s).

TimeAccounting::EnableAutoCompletion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If enabled, the dropdown elements in the edit screen are changed to modernized autocompletion fields.

TimeAccounting::UseFilter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If enabled, the filter for the previous projects can be used instead two list of projects (last and all ones). It could be used only if TimeAccounting::EnableAutoCompletion is enabled.

TimeAccounting::ActiveFilter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If enabled, the filter for the previous projects is active by default if there are the previous projects. It could be used only if EnableAutoCompletion and TimeAccounting::UseFilter are enabled.

TimeAccounting::AllowMassEntryForUser
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If enabled, the user is allowed to enter "on vacation leave", "on sick leave" and "on overtime leave" to multiple dates at once.

Frontend::Agent::View::TimeAccountingSetting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TimeAccounting::DefaultProjectName
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default name for new projects.

TimeAccounting::DefaultProjectStatus
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default status for new projects.

TimeAccounting::DefaultActionName
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default name for new actions.

TimeAccounting::DefaultActionStatus
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default status for new actions.

TimeAccounting::DefaultUserWeeklyHours
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default setting for the standard weekly hours.

TimeAccounting::DefaultUserLeaveDays
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default setting for leave days.

TimeAccounting::DefaultUserOvertime
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default setting for overtime.

TimeAccounting::DefaultUserDateStart
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default setting for date start.

TimeAccounting::DefaultUserDateEnd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default setting for date end.

TimeAccounting::DefaultUserDescription
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default setting for description.

TimeAccounting::DefaultUserStatus
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Default status for new users.

Frontend::Base::PreApplicationModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

PreApplicationModule###AgentTimeAccounting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
This module forces inserts in TimeAccounting.

About
=======

Contact
-------
| Rother OSS GmbH
| Email: hello@otobo.de
| Web: https://otobo.de

Version
-------
Author: |doc-vendor| / Version: |doc-version| / Date of release: |doc-datestamp|
