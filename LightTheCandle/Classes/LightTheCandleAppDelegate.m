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
	
	//candleState = NO;
	
	//NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	//NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
	
	//candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
	//candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];

	//[candleImageView setImage:candleOffImage];
	//onOffSwitch.on = candleState;

	myCandle = [[Candle alloc] init];

	[candleImageView setImage:[myCandle candleOffImage]];
	onOffSwitch.on = [myCandle candleState];
	candleStateLabel.text = @"Candle is Off. please light on.";
	
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
	//[candleOnImage release];
	//[candleOffImage release];
	[myCandle release];
    [super dealloc];
}

- (IBAction)toggleCandle:(id)sender {
	//candleState = !candleState;
	[myCandle setCandleState:![myCandle candleState]];
	
	//if (candleState) {
	if ([myCandle candleState]) {
		//[candleImageView setImage:candleOnImage];
		[candleImageView setImage:[myCandle candleOnImage]];
		onOffSwitch.on = YES;
		candleStateLabel.text = @"Candle is now on";
	}
	else {
		//[candleImageView setImage:candleOffImage];
		[candleImageView setImage:[myCandle candleOffImage]];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}

}


@end
