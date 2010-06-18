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
@synthesize helicopterImageView;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
	UIImage *heliImage1 = [UIImage imageNamed:@"Heli_1.png"];
	UIImage *heliImage2 = [UIImage imageNamed:@"Heli_2.png"];
	UIImage *heliImage3 = [UIImage imageNamed:@"Heli_3.png"];
	
	NSArray *aniImageArray = [NSArray arrayWithObjects:heliImage1, heliImage2, heliImage3, nil];
	
	helicopterImageView.animationImages = aniImageArray;
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


- (IBAction)toggleFly:(id)sender {
	if ([helicopterImageView isAnimating]) {
		[helicopterImageView stopAnimating];
	}
	else {
		[helicopterImageView startAnimating];
	}

}
- (IBAction)moveThroughPath:(id)sender {
	
}


@end
