//
//  RMConsoleLogger.m
//  mobile-investment-app
//
//  Created by Ramin Mohammadi on 11-06-12.
//  Copyright (c) 2012 Caesar Experts. All rights reserved.
//

#import "RMConsoleLogger.h"

//Uncomment line for toggling 'prettify'
#define RM_PRETTY_PRINT_ON

@implementation RMConsoleLogger

@synthesize callbackID;

-(void)log:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options  
{
    self.callbackID = [arguments pop];
    
#ifdef RM_PRETTY_PRINT_ON
    NSLog(@"///////////////////////////////////////////////////////////////// \n                PRINTING CONSOLE.LOG \n ---------------------------------------------------------------------- \n \n");
#endif
    
    [options enumerateKeysAndObjectsUsingBlock:^(id key, id object, BOOL *stop) {
        NSLog(@"key: %@ value: %@", key, object);
    }];
    
    for (int key = 0; key < [arguments count]; key++) {
        //        id value = [options objectForKey:key];
        NSLog(@"argument atIndex %d:   value: %@", key, [arguments objectAtIndex:key] );
    }
#ifdef RM_PRETTY_PRINT_ON 
    NSLog(@"\n \n ---------------------------------------------------------------------- \n \n");
#endif

}

@end
