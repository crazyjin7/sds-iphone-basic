//
//  MovingMoovingAppDelegate.m
//  MovingMooving
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "MovingMoovingAppDelegate.h"

@implementation MovingMoovingAppDelegate

@synthesize window;
@synthesize movingView;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


- (IBAction)move:(id)sender {
	[UIView beginAnimations:@"moving" context:nil];
	[UIView setAnimationDuration:2];
	
	//애니메이션 좀더 부드럽게...
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	
	movingView.center = CGPointMake(250, 300);
	movingView.transform = CGAffineTransformMakeRotation(90.0);
	
	[UIView commitAnimations];
	
	//commit 후에는 애니메이션 효과 없음
	movingView.backgroundColor = [UIColor blueColor];
	movingView.alpha = 0.7;
}


@end
