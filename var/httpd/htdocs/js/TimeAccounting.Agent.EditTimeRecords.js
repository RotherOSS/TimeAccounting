// --
// OTOBO is a web-based ticketing system for service organisations.
// --
// Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
// Copyright (C) 2019-2020 Rother OSS GmbH, https://otobo.de/
// --
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.

"use strict";

var TimeAccounting = TimeAccounting || {};
TimeAccounting.Agent = TimeAccounting.Agent || {};

/**
 * @namespace TimeAccounting.Agent.EditTimeRecords
 * @memberof TimeAccounting.Agent
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for the edit screen.
 */
TimeAccounting.Agent.EditTimeRecords = (function (TargetNS) {

    // Adds option to a selection
    function AddSelectionOption($SelectionElement, OptionText, OptionValue, SelectedOption) {
        var OptionHTML = Core.Template.Render(
            'Agent/TimeAccounting/Option',
            {
                Value:    OptionValue,
                Text:     OptionText,
                Selected: OptionValue === SelectedOption
            }
        );

        $SelectionElement.append(OptionHTML);
    }

    /**
     * @name Init
     * @memberof TimeAccounting.Agent.EditTimeRecords
     * @function
     * @param {String} WorkingUnitID - The ID of the working unit we are in
     * @description
     *      Fills options of action selection according to selected project
     */
    TargetNS.FillActionList = function (WorkingUnitID) {
        var ProjectName = $('#ProjectID' + WorkingUnitID + ' option:selected').text(),
            ActionList = Core.Config.Get('ActionList'),
            ActionListConstraints = Core.Config.Get('ActionListConstraints'),
            $ActionSelection = $("#ActionID" + WorkingUnitID),
            SelectedActionID = $ActionSelection.val(),
            OptionCount = 0;

        // remove previous actions, leave first element (empty element)
        $ActionSelection.find('option').filter(':not(:first)').remove();

        $.each(ActionList, function () {
            var ActionID = this[0],
                ActionName = this[1];

            $.each(ActionListConstraints, function () {
                var ProjectNameRegExp = new RegExp(this[0]),
                    ActionNameRegExp = new RegExp(this[1]);

                // add action to selection
                if (ProjectNameRegExp.test(ProjectName) && ActionNameRegExp.test(ActionName)) {
                    AddSelectionOption($ActionSelection, ActionName, ActionID, SelectedActionID);
                    OptionCount++;
                }
            });
        });

        // all actions will be added if no action was added above (possible misconfiguration)
        if (!OptionCount) {
            // ignore first element because it's the empty element which is already part of the list
            $.each(ActionList, function (Index) {
                var ActionID = this[0],
                    ActionName = this[1];
                if (Index > 0) {
                    AddSelectionOption($ActionSelection, ActionName, ActionID, SelectedActionID);
                }
            });
        }
    };


    function InitAddRow() {
        $('[name=MoreInputFields]').off('click.MoreInputFields').on('click.MoreInputFields', function () {
            var $LastRow = $(this).closest('.DataTable').find('tbody tr.WorkingHours:last'),
                $NewRow, NewRowHTML,
                RecordNumber = parseInt($('#RecordsNumber').val(), 10) + 1;

            Core.UI.InputFields.Deactivate($('.WorkingHours'));
            $NewRow = $LastRow.clone();
            NewRowHTML = $NewRow.html();

            // Now take the last row and replace all numbers with the new record number
            NewRowHTML = NewRowHTML.replace(/ProjectID[0-9]+/g, 'ProjectID' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/ProjectID\[[0-9]+/g, 'ProjectID[' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/FillActionList\([0-9]+/g, 'FillActionList(' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/ActionID[0-9]+/g, 'ActionID' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/ActionID\[[0-9]+/g, 'ActionID[' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/Remark[0-9]+/g, 'Remark' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/Remark\[[0-9]+/g, 'Remark[' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/StartTime[0-9]+/g, 'StartTime' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/StartTime\[[0-9]+/g, 'StartTime[' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/EndTime[0-9]+/g, 'EndTime' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/EndTime\[[0-9]+/g, 'EndTime[' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/Period[0-9]+/g, 'Period' + RecordNumber);
            NewRowHTML = NewRowHTML.replace(/Period\[[0-9]+/g, 'Period[' + RecordNumber);

            // Now write this HTML back to the jquery object
            $NewRow.html(NewRowHTML);

            // If last row contained values, these must be removed
            $NewRow
                .find('input:text').val('').end()
                .find('select option').prop('selected', false);

            // Now add this row to the table
            $LastRow.after($NewRow);

            // Save new RecordNumber
            $('#RecordsNumber').val(RecordNumber);

            // Re-initiate the 'odd/even' colours of the table
            $('#InsertWorkingHours tbody tr')
                .removeClass('Even')
                .filter(':odd').addClass('Even');

            InitPeriodCalculation();

            // Modernize fields
            Core.UI.InputFields.Activate($('.WorkingHours'));
        });
    }

    function RecalculateTotalHours($DataTable) {
        var Total = 0;
        $DataTable.find('.Period').each(function () {
            var Value = parseFloat($(this).val());
            if (!isNaN(Value)) {
                Total += Value;
            }
        });
        $DataTable.find('.TotalHours').text(Total.toFixed(2));
    }

    function InitPeriodCalculation() {
        // init calculation of period field after working hours where added/substracted/whatever...
        $('.Period').off('change.PeriodCalculation').on('change.PeriodCalculation', function () {
           var FieldValue = $(this).val();

           // replace , with .
           FieldValue = FieldValue.replace(/,/g, ".");

           // check if the entered value only consists of allowed values
           // if not, we do not eval for security reasons
           if (FieldValue.match(/^[0-9.+\- ]+$/)) {
               // Calculation
               try {
                   /*eslint-disable no-eval */
                   FieldValue = eval(FieldValue);
                   /*eslint-enable no-eval */
               }
               catch (CalcError) {
                   FieldValue = 0;
               }

               // set new value
               $(this).val(FieldValue.toFixed(2));

               // now StartTime and EndTime will not match the period anymore
               // delete these entries
               $(this).closest('tr').find('.StartTime, .EndTime').val('');

           }
           else {
               $(this).val('');
           }

           // now re-calculate the total hours sum
           RecalculateTotalHours($(this).closest('.DataTable'));
        });

        // init period calculation on starttime and endtime fields
        $('.StartTime, .EndTime').off('change.PeriodCalculation').on('change.PeriodCalculation', function () {
            var $StartTime, $EndTime,
                StartTimeHour, StartTimeMinute, EndTimeHour, EndTimeMinute,
                StartDate, EndDate, Today,
                Period;

            if ($(this).hasClass('StartTime')) {
                $StartTime = $(this);
                $EndTime = $StartTime.closest('tr').find('.EndTime');
            }
            else {
                $StartTime = $(this).closest('tr').find('.StartTime');
                $EndTime = $(this);
            }

            // only calculate if both fields are filled
            if ($StartTime.val() && $EndTime.val()) {
                // extract hours and minutes
                StartTimeHour = $StartTime.val().split(/:/)[0] || 0;
                StartTimeMinute = $StartTime.val().split(/:/)[1] || 0;
                EndTimeHour = $EndTime.val().split(/:/)[0] || 0;
                EndTimeMinute = $EndTime.val().split(/:/)[1] || 0;

                // define date objects
                Today = new Date();
                StartDate = new Date(Today.getYear(), Today.getMonth(), Today.getDate(), StartTimeHour, StartTimeMinute, 0);
                EndDate = new Date(Today.getYear(), Today.getMonth(), Today.getDate(), EndTimeHour, EndTimeMinute, 0);

                // calculate differences
                Period = EndDate.getTime() - StartDate.getTime();
                Period = Period / (1000 * 60 * 60);

                // set new value
                if (!isNaN(Period)) {
                    $StartTime.closest('tr').find('.Period').val(Period.toFixed(2));
                }
                else {
                    $StartTime.closest('tr').find('.Period').val('');
                }

                RecalculateTotalHours($(this).closest('.DataTable'));
            }
        });
    }

    /**
     * @name Init
     * @memberof TimeAccounting.Agent.EditTimeRecords
     * @function
     * @description
     *      This function initializes all needed JS for the Edit screen
     */
    TargetNS.Init = function () {

        var RemarkRegExpContent = Core.Config.Get('RemarkRegExpContent'),
            // Add some special validation methods for the edit screen
            // Define all available elements (only the prefixes) in a row
            ElementPrefixes = ['ProjectID', 'ActionID', 'Remark', 'StartTime', 'EndTime', 'Period'],
            Checked;

        // Validates the project: if some other field in this row is filled, the project select must be filled, too
        Core.Form.Validate.AddMethod('Validate_TimeAccounting_Project', function (Value, Element) {
            var ID,
                Mode = $(Element).attr('id').indexOf('Append') != -1 ? 'Append' : '',
                Result = true;

            // Get ID
            // Our Element can be the select element or the autocompletion input field
            if ($(Element).is('select')) {
                ID = $(Element).attr('id').replace(Mode + 'ProjectID', '');
            }
            else {
                ID = $(Element).prevAll('select').attr('id').replace(Mode + 'ProjectID', '');
            }

            if (!Value) {
                $.each(ElementPrefixes, function () {
                    if (!Result) {
                        return;
                    }

                    if (this !== (Mode + 'ProjectID') && $('#' + Mode + this + ID).val()) {
                        Result = false;
                    }
                });
            }

            return Result;
        });

        Core.Form.Validate.AddRule('Validate_TimeAccounting_Project', {
            /*eslint-disable camelcase */
            Validate_TimeAccounting_Project: true
            /*eslint-enable camelcase */
        });

        // Validates the remarks: depending on the project, remarks must be entered or not
        Core.Form.Validate.AddMethod('Validate_TimeAccounting_Remark', function (Value, Element) {
            var Mode = $(Element).attr('id').indexOf('Append') != -1 ? 'Append' : '',
                ID = $(Element).attr('id').replace(Mode + 'Remark', ''),
                RemarkRegExp = new RegExp("^(" + RemarkRegExpContent + ")$"),
                RemarkCheck = RemarkRegExp.test($('#' + Mode + 'ProjectID' + ID).val());


            if ($('#' + Mode + 'ProjectID' + ID).val()) {
                return !(RemarkCheck && Value.length < 8);
            }

            return true;
        });

        Core.Form.Validate.AddRule('Validate_TimeAccounting_Remark', {
            /*eslint-disable camelcase */
            Validate_TimeAccounting_Remark: true
            /*eslint-enable camelcase */
        });

        // Validates the start time: if a project is given and no time period is given, this field is required
        Core.Form.Validate.AddMethod('Validate_TimeAccounting_StartTime', function (Value, Element) {
            var Mode = $(Element).attr('id').indexOf('Append') != -1 ? 'Append' : '',
                ID = $(Element).attr('id').replace(Mode + 'StartTime', '');


            if (!Value && $('#' + Mode + 'ProjectID' + ID).val() && !$('#' + Mode + 'Period' + ID).val()) {
                return false;
            }

            return true;
        });

        Core.Form.Validate.AddRule('Validate_TimeAccounting_StartTime', {
            /*eslint-disable camelcase */
            Validate_TimeAccounting_StartTime: true
            /*eslint-enable camelcase */
        });

        // Validates the time period: if a project is given and no start time is given, this field is required
        Core.Form.Validate.AddMethod('Validate_TimeAccounting_Period', function (Value, Element) {
            var Mode = $(Element).attr('id').indexOf('Append') != -1 ? 'Append' : '',
                ID = $(Element).attr('id').replace(Mode + 'Period', '');

            if (!Value && $('#' + Mode + 'ProjectID' + ID).val() && !$('#' + Mode + 'StartTime' + ID).val()) {
                return false;
            }

            return true;
        });

        Core.Form.Validate.AddRule('Validate_TimeAccounting_Period', {
            /*eslint-disable camelcase */
            Validate_TimeAccounting_Period: true
            /*eslint-enable camelcase */
        });

        // initiate "more input fields" functionality
        InitAddRow();

        // initiate period calculation
        InitPeriodCalculation();

        // Select only one checkbox in the group 'Absence'
        $(".Absence input:checkbox").click(function () {
            Checked = $(this).prop("checked");
            $(".Absence input:checkbox").prop("checked", false);
            $(this).prop("checked", Checked);
        });
    };


    /**
     * @name MassEntryInit
     * @memberof TimeAccounting.Agent.EditTimeRecords
     * @function
     * @param {Object} Language object with text translations
     * @description
     *      This function initializes the javascript for the mass entry functionality
     */
    TargetNS.MassEntryInit = function() {
        $('#IncompleteWorkingDay-All').off('click.SelectAllDays').on('click.SelectAllDays', function () {
            var State = $(this).prop('checked');
            $('.IncompleteWorkingDays tbody input:checkbox').prop('checked', State);
        });
        $('#MassEntrySubmit').off('click.MassEntrySubmit').on('click.MassEntrySubmit', function () {
            var $WorkingDayCheckboxes = $('.IncompleteWorkingDays tbody input:checkbox:checked').filter('[name!=IncompleteWorkingDay-All]');

            if (!$WorkingDayCheckboxes.length) {
                alert(Core.Language.Translate('Please choose at least one day!'));
                return false;
            }

            // Show overlay
            Core.UI.Dialog.ShowContentDialog($('#MassEntryConfirmDialog'), Core.Language.Translate('Mass Entry'), '150px', 'Center', true, [
                {
                    Label: Core.Language.Translate('Submit'),
                    Function: function () {
                        var $SelectedRadio = $('#MassEntryConfirmRadio li input:radio:checked'),
                            AbsenceReason,
                            CollectedDates = '';

                        if (!$SelectedRadio.length) {
                            alert(Core.Language.Translate('Please choose a reason for absence!'));
                            return false;
                        }

                        // set absence reason
                        AbsenceReason = $SelectedRadio.data('absence');
                        if (AbsenceReason === 'LeaveDay') {
                            $('#MassEntry input[name=LeaveDay]').val(1);
                        }
                        else if (AbsenceReason === 'Sick') {
                            $('#MassEntry input[name=Sick]').val(1);
                        }
                        else if (AbsenceReason === 'Overtime') {
                            $('#MassEntry input[name=Overtime]').val(1);
                        }

                        // collect dates
                        $('.IncompleteWorkingDays tbody input:checkbox:checked').each(function () {
                            var DateItem = $(this).attr('name').replace(/IncompleteWorkingDay-/, "");
                            if (DateItem !== 'All') {
                                CollectedDates += DateItem + '|';
                            }
                        });
                        $('#MassEntry input[name=Dates]').val(CollectedDates);

                        // Show waiting icon
                        $('.Dialog:visible')
                        .find('.ContentFooter')
                        .empty()
                        .end()
                        .find('.InnerContent')
                        .width($('.Dialog:visible').find('.InnerContent').width())
                        .empty()
                        .append(Core.Template.Render('Agent/TimeAccounting/Dialog/AjaxLoader'));

                        // Submit form
                        $('#MassEntry').submit();
                    },
                    Class: 'Primary'
                },
                {
                    Label: Core.Language.Translate('Cancel'),
                    Function: function () {
                        Core.UI.Dialog.CloseDialog($('.Dialog:visible'));
                    }
                }
            ]);
            return false;
        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(TimeAccounting.Agent.EditTimeRecords || {}));
