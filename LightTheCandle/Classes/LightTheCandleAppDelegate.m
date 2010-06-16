//
//  LightTheCandleAppDelegate.m
//  LightTheCandle
//
//  Created by SDS06 on 10. 6. 16..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import "LightTheCandleAppDelegate.h"

@implementation LightTheCandleAppDelegate

@synthesize window;
@synthesize candleImageView;
@synthesize onOffSwitch;
@synthesize candleStateLabel;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	candleState = NO;
	
	NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
	
	candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
	candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	
	[candleImageView setImage:candleOffImage];
	onOffSwitch.on = candleState;
	candleStateLabel.text = @"Candle is Off. please light on.";
	
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}

- (IBAction)toggleCandle:(id)sender {
	candleState = !candleState;
	if (candleState) {
		[candleImageView setImage:candleOnImage];
		onOffSwitch.on = YES;
		candleStateLabel.text = @"Candle is now on";
	}
	else {
		[candleImageView setImage:candleOffImage];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}

}


@end
