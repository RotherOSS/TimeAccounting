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
 * @namespace TimeAccounting.Agent.ConfirmationDialog
 * @memberof TimeAccounting.Agent
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for ConfirmationDialog.
 */
TimeAccounting.Agent.ConfirmationDialog = (function (TargetNS) {

    /**
     * @private
     * @name DialogData
     * @memberof TimeAccounting.Agent.ConfirmationDialog
     * @member {Array}
     * @description
     *      This variable stores the parameters that are passed from the DTL and contain all the data that the dialog needs.
     */
    var DialogData = [];

    /**
     * @private
     * @name ShowWaitingDialog
     * @memberof TimeAccounting.Agent.ConfirmationDialog
     * @function
     * @param {String} PositionTop - vertical position of the dialog.
     * @description Shows waiting dialog until search screen is ready.
     */
    function ShowWaitingDialog(PositionTop){
        Core.UI.Dialog.ShowContentDialog('<div class="Spacing Center"><span class="AJAXLoader" title="' + Core.Config.Get('LoadingMsg') + '"></span></div>', '', PositionTop, 'Center', true);
    }

    /**
     * @name ShowConfirmationDialog
     * @memberof TimeAccounting.Agent.ConfirmationDialog
     * @function
     * @returns {Boolean} false.
     * @param {EventObject} Event - event object of the clicked element.
     * @description
     *      This function shows a confirmation dialog with 2 buttons: Yes and No or a message dialog with one button: Ok.
     */
    TargetNS.ShowConfirmationDialog = function (Event) {

        var LocalDialogData,
            PositionTop,
            Data,
            Buttons;

        // get global saved DialogData for this function
        LocalDialogData = DialogData[$(Event.target).attr('id')];

        // define the position of the dialog
        PositionTop = $(window).height() * 0.3;

        // show waiting dialog
        ShowWaitingDialog(PositionTop);

        // ajax call to the module that executes the action when pressing the confirmation button
        Data = LocalDialogData.DialogContentQueryString;
        Core.AJAX.FunctionCall(Core.Config.Get('Baselink'), Data, function (Response) {

            // 'Confirmation' opens a dialog with 2 buttons: Yes and No
            if (Response.DialogType === 'Confirmation') {

                // define yes and no buttons
                Buttons = [{
                    Label: LocalDialogData.TranslatedText.Yes,
                    Class: "Primary",

                    // define the function that is called when the 'Yes' button is pressed
                    Function: function(){

                        // disable Yes and No buttons to prevent multiple submits
                        $('div.Dialog:visible div.ContentFooter button').attr('disabled', 'disabled');

                        // redirect to the module that does the confirmed action after pressing the Yes button
                        location.href = Core.Config.Get('Baselink') + LocalDialogData.ConfirmedActionQueryString;
                    }
                }, {
                    Label: LocalDialogData.TranslatedText.No,
                    Type: "Close"
                }];
            }

            // 'Message' opens a dialog with 1 button: Ok
            else if (Response.DialogType === 'Message') {

                // define Ok button
                Buttons = [{
                    Label: LocalDialogData.TranslatedText.Ok,
                    Class: "Primary",
                    Type: "Close"
                }];
            }

            // show the confirmation dialog to confirm the action
            Core.UI.Dialog.ShowContentDialog(Response.HTML, LocalDialogData.DialogTitle, PositionTop, "Center", true, Buttons);
        }, 'json');
        return false;
    };

    /**
     * @name BindConfirmationDialog
     * @memberof TimeAccounting.Agent.ConfirmationDialog
     * @function
     * @param {Object} Data - DialogData.
     * @description  Binds conformation dialog to an element
     */
    TargetNS.BindConfirmationDialog = function (Data) {
        DialogData[Data.ElementID] = Data;

        // binding a click event to the defined element
        $(DialogData[Data.ElementID].ElementSelector)
            .off('click.TimeAccounting.BindConfirmationDialog')
            .on('click.TimeAccounting.BindConfirmationDialog', TimeAccounting.Agent.ConfirmationDialog.ShowConfirmationDialog);
    };

    return TargetNS;
}(TimeAccounting.Agent.ConfirmationDialog || {}));
