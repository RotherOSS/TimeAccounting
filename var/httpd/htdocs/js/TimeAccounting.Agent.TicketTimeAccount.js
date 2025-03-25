// --
// OTOBO is a web-based ticketing system for service organisations.
// --
// Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
// Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.de/
// --
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.
// --

"use strict";

var TimeAccounting = TimeAccounting || {};
var TimeAccountingAgent = TimeAccountingAgent || {};

/**
 * @namespace TimeAccounting.Agent.TicketTimeAccount
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for TimeAccounting.
 */
TimeAccounting.Agent.TicketTimeAccount = (function (TargetNS) {

    function InitPeriodCalculation() {
        // init calculation of period field after working hours where added/substracted/whatever...
        $('#Period').off('change.PeriodCalculation').on('change.PeriodCalculation', function () {
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
               $('#StartTime', '#EndTime').val('');
           }
           else {
               $(this).val('');
           }
        });

        // init period calculation on starttime and endtime fields
        $('#StartTime, #EndTime').off('change.PeriodCalculation').on('change.PeriodCalculation', function () {
            var $StartTime, $EndTime,
                StartTimeHour, StartTimeMinute, EndTimeHour, EndTimeMinute,
                StartDate, EndDate, Today,
                Period;

            if ($(this).attr('id') == 'StartTime') {
                $StartTime = $(this);
                $EndTime = $('#EndTime');
            }
            else {
                $StartTime = $('#StartTime');
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
                    $('#Period').val(Period.toFixed(2));
                }
                else {
                    $('#Period').val('');
                }
            }
        });
    }

    TargetNS.Init = function () {
    
        // initiate period calculation
        InitPeriodCalculation();
        
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;

}(TimeAccountingAgent.TicketTimeAccount || {}));
