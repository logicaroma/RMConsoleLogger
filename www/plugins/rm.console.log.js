/**
 * RMLogger.js
 *  
 * Phonegap RMLogger Instance plugin
 * Copyright (c) Ramin Mohammadi 2012
 *  ramin@raminizer.com
 *
 */
var RMLogger = {
    //Phonegap.exec(successCallback, failCallback, pluginName, action, [args]).
     log: function(level, message) {
         
         return Cordova.exec(null, null, "com.rmnzr.console", "log", message);
     }
};

