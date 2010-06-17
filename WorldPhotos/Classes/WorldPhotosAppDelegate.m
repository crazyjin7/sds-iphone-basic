//
//  WorldPhotosAppDelegate.m
//  WorldPhotos
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "WorldPhotosAppDelegate.h"
#import "RootViewController.h"


@implementation WorldPhotosAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize photoArray;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
	return YES;
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

