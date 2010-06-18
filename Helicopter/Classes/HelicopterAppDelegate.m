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
	CGPoint currCenter = helicopterImageView.center;
	CGAffineTransform xform = CGAffineTransformIdentity;
	CGMutablePathRef aniPath = CGPathCreateMutable();
	CGPoint dest1 = CGPointMake(160, 200);
	CGPoint dest2 = CGPointMake(160, 400);
	CGPathMoveToPoint(aniPath, &xform, currCenter.x, currCenter.y);
	CGPathAddCurveToPoint(aniPath, &xform, 0, 50, 0, 50, dest1.x, dest1.y);
	CGPathAddCurveToPoint(aniPath, &xform, 310, 350, 310, 350, dest2.x, dest2.y);
	
	//Create Animation
	CAKeyframeAnimation *keyAni = [CAKeyframeAnimation animation];
	keyAni.duration = 4.0;
	keyAni.path = aniPath;
	
	[helicopterImageView.layer addAnimation:keyAni forKey:@"position"];
}

@end
