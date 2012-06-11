RMConsoleLogger
===============

A iOS PhoneGap Plugin which functions as a bridge between console.log to NSLog

#How to setup:
 
  - create a new file named rmnzr.console.log.js in www/plugins/
  - copy & paste :

  var RMLogger = {
      //Phonegap.exec(successCallback, failCallback, pluginName, action, [args]).
    log: function(level, message) {
        
        return Cordova.exec(null, null, "com.rmnzr.console", "log", message);
    }
  };
  
  - Add a new entry to Plugins dictionary in Cordova.plist:
        Key:    com.rmnzr.console
        Value:  RMConsoleLogger
  
#Usage:
    
    // Somewhere in your js (after deviceready event fired)
    RMLogger.log("log", ["Hey", {l:'hello',k:'world'}]); 
    
##Outputs:
    key: l value: hello
    key: k value: world
    argument atIndex 0:   value: Hey
 
#Customize:
   To disable pretty printing the output comment out this line: #define RM_PRETTY_PRINT_ON
 