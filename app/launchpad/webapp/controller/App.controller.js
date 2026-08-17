sap.ui.define([
    "sap/ui/core/mvc/Controller"
], function (Controller) {
    "use strict";

    return Controller.extend("launchpad.controller.App", {

        onCarsPress: function () {
            window.location.href = "/cars/webapp/index.html";
        },

        onCustomersPress: function () {
            window.location.href = "/customers/webapp/index.html";
        }

    });
});