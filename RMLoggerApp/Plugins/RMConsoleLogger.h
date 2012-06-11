//
//  RMConsoleLogger.h
//  
//  Created by Ramin Mohammadi on 11-06-12.
//  Copyright (c) 2012 Ramin Mohammadi. All rights reserved.
//  mail: ramin@raminizer.com
//

/**
 IF MISSING JS FILE:
  - create a new file named rmnzr.console.log.js
  - copy & paste :

 var RMLogger = {
    //Phonegap.exec(successCallback, failCallback, pluginName, action, [args]).
    log: function(level, message) {
        
        return Cordova.exec(null, null, "com.rmnzr.console", "log", message);
    }
 };
 */

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface RMConsoleLogger : CDVPlugin {
     NSString* callbackID;  
}

@property (nonatomic, copy) NSString* callbackID;

// Instance Method  
- (void) log:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;


@end
