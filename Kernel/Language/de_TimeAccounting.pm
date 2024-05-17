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

package Kernel::Language::de_TimeAccounting;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTimeAccountingDelete
    $Self->{Translation}->{'Do you really want to delete the Time Accounting of this day?'} =
        'Möchten Sie die erfasste Zeit für den aktuellen Tag löschen?';

    # Template: AgentTimeAccountingEdit
    $Self->{Translation}->{'Edit Time Record'} = 'Zeiterfassung bearbeiten';
    $Self->{Translation}->{'Go to settings'} = 'Gehe zu den Einstellungen';
    $Self->{Translation}->{'Date Navigation'} = 'Datumsnavigation';
    $Self->{Translation}->{'Days without entries'} = 'Tage ohne Einträge';
    $Self->{Translation}->{'Select all days'} = 'Alle Tage auswählen';
    $Self->{Translation}->{'Mass entry'} = 'Masseneintrag';
    $Self->{Translation}->{'Please choose the reason for your absence for the selected days'} =
        'Bitte wählen Sie den Grund für Ihre Abwesenheit für die ausgewählten Tage';
    $Self->{Translation}->{'On vacation'} = 'Im Urlaub';
    $Self->{Translation}->{'On sick leave'} = 'Krankgeschrieben';
    $Self->{Translation}->{'On overtime leave'} = 'Überstundenabbau';
    $Self->{Translation}->{'Required fields are marked with a "*".'} = 'Pflichtfelder sind mit einem Stern "*" gekennzeichnet.';
    $Self->{Translation}->{'You have to fill in start and end time or a time period.'} = 'Sie müssen eine Start- und Endzeit oder eine Zeitspanne angeben.';
    $Self->{Translation}->{'Project'} = 'Projekt';
    $Self->{Translation}->{'Task'} = 'Tätigkeit';
    $Self->{Translation}->{'Remark'} = 'Anmerkung';
    $Self->{Translation}->{'Origin'} = '';
    $Self->{Translation}->{'Please add a remark with more than 8 characters!'} = 'Bitte geben Sie eine Anmerkung von mehr als 8 Zeichen Länge ein!';
    $Self->{Translation}->{'Ursprung'} = '';
    $Self->{Translation}->{'Negative times are not allowed.'} = 'Negative Zeitangaben sind nicht erlaubt.';
    $Self->{Translation}->{'Repeated hours are not allowed. Start time matches another interval.'} =
        'Diese Startzeit fällt in einen bereits eingetragen Zeitraum.';
    $Self->{Translation}->{'Invalid format! Please enter a time with the format HH:MM.'} = 'Ungültiges Format! Bitte geben Sie eine Zeit im Format HH:MM ein.';
    $Self->{Translation}->{'24:00 is only permitted as end time.'} = 'Nur 24:00 ist als Endzeit erlaubt.';
    $Self->{Translation}->{'Invalid time! A day has only 24 hours.'} = 'Ungültige Zeit! Ein Tag hat nur 24 Stunden.';
    $Self->{Translation}->{'End time must be after start time.'} = 'Die Endzeit muss nach der Startzeit sein.';
    $Self->{Translation}->{'Repeated hours are not allowed. End time matches another interval.'} =
        'Diese Endzeit wurde bereits in einem anderen Eintrag angegeben.';
    $Self->{Translation}->{'Invalid period! A day has only 24 hours.'} = 'Ungültige Angabe. Ein Tag hat nur 24 Stunden.';
    $Self->{Translation}->{'A valid period must be greater than zero.'} = 'Eine gültige Zeitspanne muss größer als Null sein.';
    $Self->{Translation}->{'Invalid period! Negative periods are not allowed.'} = 'Ungültige Angabe. Negative Zeitspannen sind nicht möglich.';
    $Self->{Translation}->{'Submit changes'} = '';
    $Self->{Translation}->{'Add one row'} = 'Eine Zeile hinzufügen';
    $Self->{Translation}->{'You can only select one checkbox element!'} = 'Sie können nur eine Checkbox markieren!';
    $Self->{Translation}->{'Are you sure that you worked while you were on sick leave?'} = 'Sind Sie sicher, dass Sie gearbeitet haben, obwohl Sie krankgeschrieben sind?';
    $Self->{Translation}->{'Are you sure that you worked while you were on vacation?'} = 'Sind Sie sicher, dass Sie gearbeitet haben, obwohl Sie im Urlaub sind?';
    $Self->{Translation}->{'Are you sure that you worked while you were on overtime leave?'} =
        'Sind Sie sicher, dass Sie gearbeitet haben, obwohl Sie einen Überstundenabbau eingetragen hatten?';
    $Self->{Translation}->{'Are you sure that you worked more than 16 hours?'} = 'Sind Sie sicher, dass Sie mehr als 16 Stunden gearbeitet haben?';

    # Template: AgentTimeAccountingOverview
    $Self->{Translation}->{'Time reporting monthly overview'} = 'Zeiterfassung - Monatsübersicht';
    $Self->{Translation}->{'Overtime (Hours)'} = 'Überstunden (in Stunden)';
    $Self->{Translation}->{'Overtime (this month)'} = 'Überstunden (dieser Monat)';
    $Self->{Translation}->{'Overtime (total)'} = 'Überstunden (Summe)';
    $Self->{Translation}->{'Remaining overtime leave'} = 'Verbleibende Überstunden zum Abbau';
    $Self->{Translation}->{'Vacation (Days)'} = 'Urlaub (in Tagen)';
    $Self->{Translation}->{'Vacation taken (this month)'} = 'Urlaubstage (dieser Monat)';
    $Self->{Translation}->{'Vacation taken (total)'} = 'Urlaubstage (Summe)';
    $Self->{Translation}->{'Remaining vacation'} = 'Urlaubstage (verbleibend)';
    $Self->{Translation}->{'Sick Leave (Days)'} = 'Erkrankt (in Tagen)';
    $Self->{Translation}->{'Sick leave taken (this month)'} = 'Krankgeschrieben (dieser Monat)';
    $Self->{Translation}->{'Sick leave taken (total)'} = 'Erkrankt (Summe)';
    $Self->{Translation}->{'Previous month'} = 'Vorheriger Monat';
    $Self->{Translation}->{'Next month'} = 'Nächster Monat';
    $Self->{Translation}->{'Weekday'} = 'Wochentag';
    $Self->{Translation}->{'Working Hours'} = 'Arbeitsstunden';
    $Self->{Translation}->{'Total worked hours'} = 'Arbeitsstunden (gesamt)';
    $Self->{Translation}->{'User\'s project overview'} = 'Projektübersicht des Benutzers';
    $Self->{Translation}->{'Hours (monthly)'} = 'Stunden (im Monat)';
    $Self->{Translation}->{'Hours (Lifetime)'} = 'Stunden (gesamt)';
    $Self->{Translation}->{'Grand total'} = 'Summe';

    # Template: AgentTimeAccountingReporting
    $Self->{Translation}->{'Time reporting'} = 'Zeitberichterstattung';
    $Self->{Translation}->{'Month Navigation'} = 'Datumsauswahl';
    $Self->{Translation}->{'Go to date'} = 'Gehe zu Datum';
    $Self->{Translation}->{'User reports'} = 'Nutzerberichte';
    $Self->{Translation}->{'Monthly total'} = 'pro Monat';
    $Self->{Translation}->{'Lifetime total'} = 'Summe';
    $Self->{Translation}->{'Overtime leave'} = 'Überstundenabbau';
    $Self->{Translation}->{'Vacation'} = 'Urlaub';
    $Self->{Translation}->{'Sick leave'} = 'Erkrankt';
    $Self->{Translation}->{'Vacation remaining'} = 'Verbleibende Urlaubstage';
    $Self->{Translation}->{'Project reports'} = 'Projektberichte';

    # Template: AgentTimeAccountingReportingProject
    $Self->{Translation}->{'Project report'} = 'Projektübersicht';
    $Self->{Translation}->{'Go to reporting overview'} = 'Zur Berichtsübersicht';
    $Self->{Translation}->{'Currently only active users in this project are shown. To change this behavior, please update setting:'} =
        'Derzeit werden in diesem Projekt nur aktive Benutzer angezeigt. Um diese Einstellung zu ändern, bearbeiten Sie bitte:';
    $Self->{Translation}->{'Currently all time accounting users are shown. To change this behavior, please update setting:'} =
        'Derzeit werden alle zeiterfassenden Benutzer angezeigt. Um diese Einstellung zu ändern, bearbeiten Sie bitte:';

    # Template: AgentTimeAccountingSetting
    $Self->{Translation}->{'Edit Time Accounting Project Settings'} = 'Zeiterfassung-Projekteinstellungen bearbeiten';
    $Self->{Translation}->{'Add project'} = 'Projekt hinzufügen';
    $Self->{Translation}->{'Go to settings overview'} = 'Zur Einstellungsübersicht gehen';
    $Self->{Translation}->{'Add Project'} = 'Projekt hinzufügen';
    $Self->{Translation}->{'Edit Project Settings'} = 'Projekteinstellungen bearbeiten';
    $Self->{Translation}->{'There is already a project with this name. Please, choose a different one.'} =
        'Ein Projekt mit gleichem Namen existiert bereits. Bitte wählen Sie einen anderen Namen.';
    $Self->{Translation}->{'Edit Time Accounting Settings'} = 'Zeiterfassung-Einstellungen bearbeiten';
    $Self->{Translation}->{'Add task'} = 'Tätigkeit hinzufügen';
    $Self->{Translation}->{'Filter for projects, tasks or users'} = 'Filter für Projekte, Aufgaben oder Benutzer';
    $Self->{Translation}->{'Time periods can not be deleted.'} = 'Zeitfenster können nicht gelöscht werden.';
    $Self->{Translation}->{'Project List'} = 'Projektliste';
    $Self->{Translation}->{'Task List'} = 'Tätigkeitsliste';
    $Self->{Translation}->{'Add Task'} = 'Tätigkeit hinzufügen';
    $Self->{Translation}->{'Edit Task Settings'} = 'Tätigkeitseinstellungen bearbeiten';
    $Self->{Translation}->{'There is already a task with this name. Please, choose a different one.'} =
        'Eine Tätigkeit mit gleichem Namen existiert bereits. Bitte wählen Sie einen anderen Namen.';
    $Self->{Translation}->{'User List'} = 'Benutzerliste';
    $Self->{Translation}->{'User Settings'} = 'Benutzereinstellungen';
    $Self->{Translation}->{'User is allowed to see overtimes'} = 'Benutzer ist berechtigt Überstunden zu sehen';
    $Self->{Translation}->{'Show Overtime'} = 'Überstunden anzeigen';
    $Self->{Translation}->{'User is allowed to create projects'} = 'Benutzer ist berechtigt Projekte zu erstellen';
    $Self->{Translation}->{'Allow project creation'} = 'Projekt erstellen';
    $Self->{Translation}->{'User is allowed to skip time accounting'} = 'Benutzer darf die Zeiterfassung überspringen';
    $Self->{Translation}->{'Allow time accounting skipping'} = 'Überspringen der Zeiterfassung erlauben';
    $Self->{Translation}->{'If this option is selected, time accounting is effectively optional for the user.'} =
        'Ist diese Option ausgewählt, ist die Zeiterfassung für den Benutzer optional.';
    $Self->{Translation}->{'There will be no warnings about missing entries and no entry enforcement.'} =
        'Es gibt keine Warnung bei fehlenden Einträgen und keinen Zwang zum Eintragen.';
    $Self->{Translation}->{'Time Spans'} = 'Zeitspannen';
    $Self->{Translation}->{'Period Begin'} = 'Datum Beginn';
    $Self->{Translation}->{'Period End'} = 'Datum Ende';
    $Self->{Translation}->{'Days of Vacation'} = 'Urlaubstage';
    $Self->{Translation}->{'Hours per Week'} = 'Wochenstunden';
    $Self->{Translation}->{'Authorized Overtime'} = 'Autorisierte Überstunden';
    $Self->{Translation}->{'Start Date'} = 'Startdatum';
    $Self->{Translation}->{'Please insert a valid date.'} = 'Bitte geben Sie ein gültiges Datum ein.';
    $Self->{Translation}->{'End Date'} = 'Enddatum';
    $Self->{Translation}->{'Period end must be after period begin.'} = 'Das Ende der Zeitspanne muss nach dem Anfang sein.';
    $Self->{Translation}->{'Leave Days'} = 'Urlaubstage';
    $Self->{Translation}->{'Weekly Hours'} = 'Wöchentliche Stunden';
    $Self->{Translation}->{'Overtime'} = 'Überstunden';
    $Self->{Translation}->{'No time periods found.'} = 'Keine Zeitspanne gefunden.';
    $Self->{Translation}->{'Add time period'} = 'Zeitspanne hinzufügen';

    # Template: AgentTimeAccountingView
    $Self->{Translation}->{'View Time Record'} = 'Datensatz anzeigen';
    $Self->{Translation}->{'View of '} = 'Ansicht von';
    $Self->{Translation}->{'Previous day'} = 'Vorheriger Tag';
    $Self->{Translation}->{'Next day'} = 'Nächster Tag';
    $Self->{Translation}->{'No data found for this day.'} = 'Kein Eintrag für diesen Tag gefunden.';

    # Perl Module: Kernel/Modules/AgentTimeAccountingEdit.pm
    $Self->{Translation}->{'Can\'t insert Working Units!'} = 'Kann Arbeitseinheiten nicht einfügen!';
    $Self->{Translation}->{'Last Projects'} = 'Letzte Projekte';
    $Self->{Translation}->{'Can\'t save settings, because a day has only 24 hours!'} = 'Speichern nicht möglich. Ein Tag hat nur 24 Stunden!';
    $Self->{Translation}->{'Can\'t delete Working Units!'} = 'Kann Arbeitseinheiten nicht löschen!';
    $Self->{Translation}->{'This Date is out of limit, but you haven\'t insert this day yet, so you get one(!) chance to insert'} =
        'Dieses Datum liegt außerhalb der Grenzwerte, Sie haben diesen Tag aber bis jetzt noch nicht eingefügt, deshalb bekommen Sie dafür eine(!) Chance';
    $Self->{Translation}->{'Incomplete Working Days'} = 'Unvollständige Arbeitstage';
    $Self->{Translation}->{'Successful insert!'} = 'Eingaben gespeichert!';
    $Self->{Translation}->{'Error while inserting multiple dates!'} = 'Fehler bei der Eingabe für mehrere Tage!';
    $Self->{Translation}->{'Successfully inserted entries for several dates!'} = 'Daten für mehrere Tage erfolgreich erfasst!';
    $Self->{Translation}->{'Entered date was invalid! Date was changed to today.'} = 'Eingegebenes Datum ungültig! Datum wurde auf \'heute\' geändert.';
    $Self->{Translation}->{'No time period configured, or the specified date is outside of the defined time periods.'} =
        'Es ist keine Zeitperiode konfiguriert, oder das angegebene Datum liegt außerhalb der konfigurierten Zeitperioden.';
    $Self->{Translation}->{'Please contact the time accounting administrator to update your time periods!'} =
        'Bitte kontaktieren Sie Ihren Zeiterfassungs-Administrator, um die Zeitperioden zu aktualisieren!';
    $Self->{Translation}->{'Last Selected Projects'} = 'Zuletzt ausgewählte Projekte';
    $Self->{Translation}->{'All Projects'} = 'Alle Projekte';

    # Perl Module: Kernel/Modules/AgentTimeAccountingReporting.pm
    $Self->{Translation}->{'ReportingProject: Need ProjectID'} = 'Berichtsprojekt: Benötige ProjectID';
    $Self->{Translation}->{'Reporting Project'} = 'Berichtsprojekt';
    $Self->{Translation}->{'Reporting'} = 'Berichte';

    # Perl Module: Kernel/Modules/AgentTimeAccountingSetting.pm
    $Self->{Translation}->{'Unable to update user settings!'} = 'Benutzereinstellungen können nicht aktualisiert werden!';
    $Self->{Translation}->{'Project added!'} = 'Projekt hinzugefügt!';
    $Self->{Translation}->{'Project updated!'} = 'Projekt aktualisiert!';
    $Self->{Translation}->{'Task added!'} = 'Aufgabe hinzugefügt!';
    $Self->{Translation}->{'Task updated!'} = 'Aufgabe aktualisiert!';
    $Self->{Translation}->{'The UserID is not valid!'} = 'Die UserID ist ungültig!';
    $Self->{Translation}->{'Can\'t insert user data!'} = 'Kann Benutzerdaten nicht einfügen!';
    $Self->{Translation}->{'Unable to add time period!'} = 'Kann Zeitperiode nicht hinzufügen!';
    $Self->{Translation}->{'Setting'} = 'Einstellung';
    $Self->{Translation}->{'User updated!'} = 'Benutzer aktualisiert!';
    $Self->{Translation}->{'User added!'} = 'Benutzer hinzugefügt!';
    $Self->{Translation}->{'Add a user to time accounting...'} = 'Einen Benutzer zur Zeiterfassung hinzufügen ...';
    $Self->{Translation}->{'New User'} = 'Neuer Benutzer';
    $Self->{Translation}->{'Period Status'} = 'Status des Zeitraums';

    # Perl Module: Kernel/Modules/AgentTimeAccountingView.pm
    $Self->{Translation}->{'View: Need %s!'} = 'Ansicht: Benötige %s!';

    # Perl Module: Kernel/Output/HTML/Notification/TimeAccounting.pm
    $Self->{Translation}->{'Please insert your working hours!'} = 'Bitte die Arbeitsstunden eintragen!';

    # Perl Module: Kernel/Output/HTML/ToolBar/IncompleteWorkingDays.pm
    $Self->{Translation}->{'Incomplete working days'} = 'Unvollständige Arbeitstage';

    # JS File: TimeAccounting.Agent.EditTimeRecords
    $Self->{Translation}->{'Please choose at least one day!'} = 'Bitte wählen Sie mindestens einen Tag!';
    $Self->{Translation}->{'Mass Entry'} = 'Masseneintrag';
    $Self->{Translation}->{'Please choose a reason for absence!'} = 'Bitte wählen Sie einen Grund für die Abwesenheit aus!';

    # JS File: TimeAccounting.Agent
    $Self->{Translation}->{'Delete Time Accounting Entry'} = 'Eintrag löschen';
    $Self->{Translation}->{'Confirm insert'} = 'Eingabe bestätigen';

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
    $Self->{Translation}->{'Branch View commit limit'} = 'Commit-Limit der Zweigansicht';
    $Self->{Translation}->{'CodePolicy'} = '';
    $Self->{Translation}->{'Commit limit per page for Branch view screen'} = 'Commit-Limit pro Seite für die Zweigansicht.';
    $Self->{Translation}->{'Create analysis file'} = 'Erstelle Analysedatei';
    $Self->{Translation}->{'Creates a analysis file from this ticket and sends to Znuny.'} =
        'Erstellt einen Analysedatei von diesem Ticket und sendet ihn an Znuny.';
    $Self->{Translation}->{'Creates a analysis file from this ticket.'} = 'Erstellt einen Analysedatei von diesem Ticket.';
    $Self->{Translation}->{'Define private addon repos.'} = '';
    $Self->{Translation}->{'Defines the filter that processes the HTML templates.'} = '';
    $Self->{Translation}->{'Defines the test module for checking code policy.'} = '';
    $Self->{Translation}->{'Definition of GIT clone/push URL Prefix.'} = 'Definition des GIT clone/push URL Präfix';
    $Self->{Translation}->{'Definition of a Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRelease => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Definition eines dynamischen Feldes: Group => Gruppe mit Zugriff zu den dynamischen Feldern; AlwaysVisible => Feld kann entfernt werden (0|1); InformationAreaName => Name des Widgets; InformationAreaSize => Größe und Position des Widgets (Large|Small); Name => Der Name des zu benutzenden dynamischen Feldes; Priority => Sortierung des dynamischen Feldes; State => Status des Feldes (0 = deaktiviert, 1 = aktiviert, 2 = zwingend erforderlich), FilterRelease => Regulärer Ausdruck welcher den Repository Namen beschreibt, der angezeigt werden soll; FilterPackage => Regulärer Ausdruck welcher den Paketnamen beschreibt das angezeigt werden soll; FilterBranch => Regulärer Ausdruck welcher den Namen des Zweigs (Branch) beschreibt, der angezeigt werden soll; FilterRelease => Regulärer Ausdruck den Versions-String eines Releases beschreibt, das angezeigt werden soll.';
    $Self->{Translation}->{'Definition of a Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Definition eines dynamischen Felds: Group => Gruppe mit Zugriff auf das dynamische Feld; AlwaysVisible => Feld kann entfernt werden (0|1); InformationAreaName => Name des Widgets (Informationsbereich); InformationAreaSize => Größe und Position des Widgets (Large|Small); Name => Name des zu verwendeten dynamischen Feldes; Priority => Anordnung der dynamischen Felder; State => Status der dynamischen Felder (0 = deaktiviert, 1 = aktiviert, 2 = Pflichtfeld), FilterRepository => Regex der den Repository-Namen matchen muss um angezeigt zu werden, FilterPackage => Regex der den Packen-Namen matchen muss um angezeigt zu werden, FilterBranch => Regex der den Branch-Namen matchen muss um angezeigt zu werden, FilterRelease => Regex der den Release Version-String matchen muss um angezeigt zu werden.';
    $Self->{Translation}->{'Definition of external MD5 sums (key => MD5, Value => Vendor, PackageName, Version, Date).'} =
        'Definition externer MD5 Summen (key => MD5, Value => Hersteller, Paketname, Version, Datum).';
    $Self->{Translation}->{'Definition of mappings between public repository requests and internal OPMS repositories.'} =
        'Definition von Mappings zwischen öffentlichen Repository Anfragen und internen OPMS Repositories.';
    $Self->{Translation}->{'Definition of package states.'} = 'Definition der Paket Status.';
    $Self->{Translation}->{'Definition of renamed OPMS packages.'} = 'Definition umbenannter OPMS Pakete.';
    $Self->{Translation}->{'Directory, which is used by Git to cache repositories.'} = '';
    $Self->{Translation}->{'Directory, which is used by Git to store temporary data.'} = '';
    $Self->{Translation}->{'Directory, which is used by Git to store working copies.'} = '';
    $Self->{Translation}->{'Disable online repositories.'} = '';
    $Self->{Translation}->{'Do not log git ssh connection authorization results for these users. Useful for automated stuff.'} =
        'Für diese Benutzer werden keine Authorisierungen von Verbindungen geloggt. Nützlich für automatisierte Anfragen.';
    $Self->{Translation}->{'Dynamic Fields Screens'} = 'Dynamische Felder Oberflächen';
    $Self->{Translation}->{'DynamicFieldScreen'} = '';
    $Self->{Translation}->{'Export all available public keys to authorized_keys file.'} = 'Exportiert alle verfügbaren öffentlichen Schlüssel in die Datei "authorized_keys".';
    $Self->{Translation}->{'Export all relevant releases to ftp server.'} = 'Alle relevanten Releases auf den FTP-Server exportieren.';
    $Self->{Translation}->{'Frontend module registration for the OPMS object in the agent interface.'} =
        'Frontendmodul-Registration für das OPMS-Objekt im Agent-Interface.';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSRepository object in the public interface.'} =
        'Frontendmodul-Registration des PublicOPMSRepository-Objekts im Public-Interface.';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSRepositoryLookup object in the public interface.'} =
        'Frontendmodul-Registration für das PublicOPMSRepositoryLookup Objekt im Public-Interface.';
    $Self->{Translation}->{'Frontend module registration for the PublicOPMSTestBuild object in the public interface.'} =
        'Frontendmodul-Registration des PublicOPMSTestBuild-Objekts im Public-Interface.';
    $Self->{Translation}->{'Frontend module registration for the PublicPackageVerification object in the public interface.'} =
        'Frontendmodul-Registration für das PublicPackageVerification Objekt im Public-Interface.';
    $Self->{Translation}->{'Frontend module registration for the admin interface.'} = '';
    $Self->{Translation}->{'GIT Author registration.'} = 'Registrierung der GIT Verfasser';
    $Self->{Translation}->{'Generate HTML comment hooks for the specified blocks so that filters can use them.'} =
        '';
    $Self->{Translation}->{'Generate documentations once per night.'} = '';
    $Self->{Translation}->{'Git'} = 'Git';
    $Self->{Translation}->{'Git Management'} = 'Git-Verwaltung';
    $Self->{Translation}->{'Git Repository'} = '';
    $Self->{Translation}->{'Group, whose members have delete admin permissions in OPMS.'} = 'Gruppe, dessen Mitglieder Delete-Admin-Rechte in OPMS haben.';
    $Self->{Translation}->{'Group, whose members have repository admin permissions in OPMS.'} =
        'Gruppe, dessen Mitglieder Repository-Admin-Rechte in OPMS haben.';
    $Self->{Translation}->{'Group, whose members will see CI test result information in OPMS screens.'} =
        '';
    $Self->{Translation}->{'Groups an authenticated user (by user login and password) must be member of to build test packages via the public interface.'} =
        'Gruppen denen ein authentifizierter Benutzer (durch Benutzernamen und Passwort) angehören muss, um Testpakete über das Public-Interface zu erzeugen.';
    $Self->{Translation}->{'Groups which will be set during git project creation processes while adding OPMS repositories.'} =
        'Gruppen welche automatisch durch das Anlegen von GIT-Projekten gesetzt werden, während OPMS Repositories angelegt werden.';
    $Self->{Translation}->{'Manage dynamic field in screens.'} = 'Verwaltung von dynamischen Feldern in Oberflächen.';
    $Self->{Translation}->{'Manage your public SSH key(s) for Git access here. Make sure to save this preference when you add a new key.'} =
        'Verwalten Sie hier Ihre öffentlichen SSH-Schlüssel für den Git-Zugang. Achten Sie darauf, diese Einstellung zu speichern, wenn Sie einen neuen Schlüssel hinzufügen.';
    $Self->{Translation}->{'Module to generate statistics about the added code lines.'} = 'Modul zur Erstellung von Statistiken über die hinzugefügten Code-Zeilen.';
    $Self->{Translation}->{'Module to generate statistics about the growth of code.'} = 'Modul zur Generierung von Statistiken über das Wachstum von Code.';
    $Self->{Translation}->{'Module to generate statistics about the number of git commits.'} =
        'Modul zur Erstellung von Statistiken über die Anzahl der Git-Commits.';
    $Self->{Translation}->{'Module to generate statistics about the removed code lines.'} = 'Modul zur Erstellung von Statistiken über die gelöschten Code-Zeilen.';
    $Self->{Translation}->{'OPMS'} = 'OPMS';
    $Self->{Translation}->{'Only users who have rw permissions in one of these groups may access git.'} =
        'Nur Benutzer, die über rw-Berechtigungen in einer dieser Gruppen verfügen, können auf Git zugreifen.';
    $Self->{Translation}->{'Option to set a package compatibility manually.'} = '';
    $Self->{Translation}->{'Parameters for the pages in the BranchView screen.'} = 'Parameter für die Seiten in der BranchView-Ansicht.';
    $Self->{Translation}->{'Pre-Definition of the \'GITProjectName\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Vor-Definition des dynamischen Feldes \'GITProjectName\': Group => Gruppe mit Zugriff auf das dynamische Feld; AlwaysVisible => Feld kann entfernt werden (0|1); InformationAreaName => Name des Widgets (Informationsbereich); InformationAreaSize => Größe und Position des Widgets (Large|Small); Name => Name des zu verwendeten dynamischen Feldes; Priority => Anordnung der dynamischen Felder; State => Status der dynamischen Felder (0 = deaktiviert, 1 = aktiviert, 2 = Pflichtfeld), FilterRepository => Regex der den Repository-Namen matchen muss um angezeigt zu werden, FilterPackage => Regex der den Packen-Namen matchen muss um angezeigt zu werden, FilterBranch => Regex der den Branch-Namen matchen muss um angezeigt zu werden, FilterRelease => Regex der den Release Version-String matchen muss um angezeigt zu werden.';
    $Self->{Translation}->{'Pre-Definition of the \'GITRepositoryName\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Vor-Definition des dynamischen Feldes \'GITRepositoryName\': Group => Gruppe mit Zugriff auf das dynamische Feld; AlwaysVisible => Feld kann entfernt werden (0|1); InformationAreaName => Name des Widgets (Informationsbereich); InformationAreaSize => Größe und Position des Widgets (Large|Small); Name => Name des zu verwendeten dynamischen Feldes; Priority => Anordnung der dynamischen Felder; State => Status der dynamischen Felder (0 = deaktiviert, 1 = aktiviert, 2 = Pflichtfeld), FilterRepository => Regex der den Repository-Namen matchen muss um angezeigt zu werden, FilterPackage => Regex der den Packen-Namen matchen muss um angezeigt zu werden, FilterBranch => Regex der den Branch-Namen matchen muss um angezeigt zu werden, FilterRelease => Regex der den Release Version-String matchen muss um angezeigt zu werden.';
    $Self->{Translation}->{'Pre-Definition of the \'PackageDeprecated\' Dynamic Field: Group => Group with access to the Dynamic Fields; AlwaysVisible => Field can be removed (0|1); InformationAreaName => Name of the Widgets; InformationAreaSize => Size and position of the widgets (Large|Small); Name => Name of the Dynamic Field which should be used; Priority => Order of the Dynamic Fields; State => State of the Fields (0 = disabled, 1 = active, 2 = mandatory), FilterRepository => Regex which the repository name has to match to be displayed, FilterPackage => Regex which the package name has to match to be displayed, FilterBranch => Regex which the branch name has to match to be displayed, FilterRelease => Regex which the repelase version string has to match to be displayed.'} =
        'Vor-Definition des dynamischen Feldes \'PackageDeprecated\': Group => Gruppe mit Zugriff auf das dynamische Feld; AlwaysVisible => Feld kann entfernt werden (0|1); InformationAreaName => Name des Widgets (Informationsbereich); InformationAreaSize => Größe und Position des Widgets (Large|Small); Name => Name des zu verwendeten dynamischen Feldes; Priority => Anordnung der dynamischen Felder; State => Status der dynamischen Felder (0 = deaktiviert, 1 = aktiviert, 2 = Pflichtfeld), FilterRepository => Regex der den Repository-Namen matchen muss um angezeigt zu werden, FilterPackage => Regex der den Packen-Namen matchen muss um angezeigt zu werden, FilterBranch => Regex der den Branch-Namen matchen muss um angezeigt zu werden, FilterRelease => Regex der den Release Version-String matchen muss um angezeigt zu werden.';
    $Self->{Translation}->{'Recipients that will be informed by email in case of errors.'} =
        '';
    $Self->{Translation}->{'SSH Keys for Git Access'} = 'SSH-Schlüssel für den Git-Zugang';
    $Self->{Translation}->{'Send analysis file'} = 'Sende Analysedatei';
    $Self->{Translation}->{'Sets the git clone address to be used in repository listings.'} =
        'Legt die Git-Clone-Adresse fest, die in Repository-Listen verwendet werden soll.';
    $Self->{Translation}->{'Sets the home directory for git repositories.'} = 'Legt das Home-Verzeichnis für Git-Repositorys fest.';
    $Self->{Translation}->{'Sets the path for the BugzillaAddComment post receive script location.'} =
        'Legt den Pfad zums BugzillaAddComment post receive Skript fest.';
    $Self->{Translation}->{'Sets the path for the OTRSCodePolicy  script location. It is recommended to have a separate clone of the OTRSCodePolicy module that is updated via cron.'} =
        '';
    $Self->{Translation}->{'Sets the path for the OTRSCodePolicy pre receive script location. It is recommended to have a separate clone of the OTRSCodePolicy module that is updated via cron.'} =
        'Legt den Pfad zum OTRSCodePolicy pre-receive Skript fest. Es wird empfohlen, einen separaten Klon des OTRSCodePolicy-Moduls zu verwenden, der über Cron aktualisiert wird.';
    $Self->{Translation}->{'Show latest commits in git repositories.'} = '';
    $Self->{Translation}->{'Shows a link in the menu to go create a unit test from the current ticket.'} =
        '';
    $Self->{Translation}->{'Synchronize OPMS tables with a remote database.'} = 'Synchronisiert OPMS Tabellen mit einer entfernten Datenbank.';
    $Self->{Translation}->{'The minimum version of the sphinx library.'} = '';
    $Self->{Translation}->{'The name of the sphinx theme to be used.'} = '';
    $Self->{Translation}->{'The path to the OTRS CSS file (relative below the static path).'} =
        '';
    $Self->{Translation}->{'The path to the OTRS logo (relative below the static path).'} = '';
    $Self->{Translation}->{'The path to the static folder, containing images and css files.'} =
        '';
    $Self->{Translation}->{'The path to the theme folder, containing the sphinx themes.'} = '';
    $Self->{Translation}->{'This configuration defines all possible screens to enable or disable default columns.'} =
        'Diese Konfiguration definiert alle möglichen Oberflächen in denen dynamische Felder als DefaultColumns aktiviert/deaktiviert werden können.';
    $Self->{Translation}->{'This configuration defines all possible screens to enable or disable dynamic fields.'} =
        'Diese Konfiguration definiert alle möglichen Oberflächen in denen dynamische Felder als DynamicFields aktiviert/deaktiviert werden können.';
    $Self->{Translation}->{'This configuration defines if only valids or all (invalids) dynamic fields should be shown.'} =
        'Diese Konfiguration definiert ob nur gültige oder alle (ungültige) dynamischen Felder angezeigt werden sollen.';
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
        'Benutzer, die rw-Berechtigungen in einer dieser Gruppen haben, dürfen Force-Pushes \'git push --force\' ausführen.';
    $Self->{Translation}->{'Users who have rw permissions in one of these groups are permitted to manage projects. Additionally the members have administration permissions to the git management.'} =
        'Benutzer die über rw-Berechtigungen in einer dieser Gruppen verfügen, können Projekte verwalten. Zusätzlich haben die Mitglieder Administrationsberechtigungen für die Git-Verwaltung.';


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
