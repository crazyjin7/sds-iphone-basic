//
//  HelicopterAppDelegate.m
//  Helicopter
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "HelicopterAppDelegate.h"

@implementation HelicopterAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
