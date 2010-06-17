//
//  WorldPhotosAppDelegate.m
//  WorldPhotos
//
//  Created by SDS06 on 10. 6. 10..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "WorldPhotosAppDelegate.h"
#import "RootViewController.h"
#import <CoreLocation/CoreLocation.h>

@implementation WorldPhotosAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize photoArray;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    // Override point for customization after app launch    
	photoArray = [[NSArray alloc] initWithArray:[self createPhotoData]];
	
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
	[photoArray release];
	[super dealloc];
}


- (NSArray *) createPhotoData{
	CLLocation *location;
	UIImage *photo;
	UIImage *thumbnail;
	
	
	
	location = [[CLLocation alloc] initWithLatitude:31.048026
										  longitude:-7.13017];

	photo = [UIImage imageNamed:@"Africa_Morocco_1.jpg"];
	thumbnail = [UIImage imageNamed:@"Africa_Morocco_1_thumbnail.jpg"];
	
	NSDictionary *africa_moroco = [NSDictionary dictionaryWithObjectsAndKeys:
								@"Asia", @"Region",
								@"Moroco", @"Country",
								photo, @"Photo",
								thumbnail, @"Thumbnail",
								location, @"Location", nil];
	
	[location release];
	
	
	location = [[CLLocation alloc] initWithLatitude:35.700884
										  longitude:139.880893];

	
	photo = [UIImage imageNamed:@"Asia_Japan_1.jpg"];
	thumbnail = [UIImage imageNamed:@"Asia_Japan_1_thumbnail.jpg"];
	
	NSDictionary *asia_japan = [NSDictionary dictionaryWithObjectsAndKeys:
								@"Asia", @"Region",
								@"Japan", @"Country",
								photo, @"Photo",
								thumbnail, @"Thumbnail",
								location, @"Location", nil];
	
	[location release];
	
	location = [[CLLocation alloc] initWithLatitude:46.981248
										  longitude:8.253908];
	
	
	photo = [UIImage imageNamed:@"Europe_Swiss_1.jpg"];
	thumbnail = [UIImage imageNamed:@"Europe_Swiss_1_thumbnail.jpg"];
	
	NSDictionary *europe_swiss = [NSDictionary dictionaryWithObjectsAndKeys:
								@"Europe", @"Region",
								@"Swiss", @"Country",
								photo, @"Photo",
								thumbnail, @"Thumbnail",
								location, @"Location", nil];
	
	[location release];	
	NSArray *returnArray = [NSArray arrayWithObjects:africa_moroco, asia_japan, europe_swiss, nil];
	
	return returnArray;
}

@end

