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

/**
 * @namespace TimeAccounting.Agent.View
 * @author Rother OSS GmbH
 * @description
 *      This namespace contains the special module functions for TimeAccounting.
 */
TimeAccounting.Agent.View = (function (TargetNS) {

    TargetNS.Init = function () {

        $('#NavigationSelect').bind('click', function(){
            $('#DateSelectionForm').submit();
        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;

}(TimeAccounting.Agent.View || {}));
