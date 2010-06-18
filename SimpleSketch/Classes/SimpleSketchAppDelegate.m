//
//  SimpleSketchAppDelegate.m
//  SimpleSketch
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "SimpleSketchAppDelegate.h"
#import "CanvasView.h"

@implementation SimpleSketchAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
	CanvasView *aCanvasView = [[CanvasView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	aCanvasView.backgroundColor = [UIColor darkGrayColor];
	aCanvasView.multipleTouchEnabled = YES;
	
	[window addSubview:aCanvasView];
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
