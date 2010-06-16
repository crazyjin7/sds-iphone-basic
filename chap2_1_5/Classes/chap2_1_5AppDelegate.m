//
//  chap2_1_5AppDelegate.m
//  chap2_1_5
//
//  Created by SDS06 on 10. 6. 16..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "chap2_1_5AppDelegate.h"
#import "Person.h"

@implementation chap2_1_5AppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	Person *person = [[Person alloc] init];
	[person singASong];
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
