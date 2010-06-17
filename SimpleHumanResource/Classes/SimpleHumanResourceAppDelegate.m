//
//  SimpleHumanResourceAppDelegate.m
//  SimpleHumanResource
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "SimpleHumanResourceAppDelegate.h"
#import "RootViewController.h"


@implementation SimpleHumanResourceAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize personnel;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    // Override point for customization after app launch    
	
	personnel = [[NSArray alloc] initWithArray:[self createEmployee]];
	
	
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

- (NSArray *)createEmployee {
	NSDictionary *employee1 = [NSDictionary dictionaryWithObjectsAndKeys:
							   @"윤성관", @"nameOfEmployee",
							   @"Development", @"departmentOfEmployee", nil];
	NSDictionary *employee2 = [NSDictionary dictionaryWithObjectsAndKeys:
							   @"남장혁", @"nameOfEmployee",
							   @"Design", @"departmentOfEmployee", nil];
	NSDictionary *employee3 = [NSDictionary dictionaryWithObjectsAndKeys:
							   @"심성은", @"nameOfEmployee",
							   @"Resource", @"departmentOfEmployee", nil];
	NSDictionary *employee4 = [NSDictionary dictionaryWithObjectsAndKeys:
							   @"윤심깜", @"nameOfEmployee",
							   @"Security", @"departmentOfEmployee", nil];

	NSArray *lingostarArray = [NSArray arrayWithObjects:employee1, employee2, employee3, employee4, nil];
	
	return lingostarArray;

}

@end

