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

	myCandle = [[Candle alloc] init];
	[myCandle setDelegate:self];

	[candleImageView setImage:[myCandle candleOffImage]];
	onOffSwitch.on = [myCandle candleState];
	candleStateLabel.text = @"Candle is Off. please light on.";
	
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
	[myCandle release];
    [super dealloc];
}

- (IBAction)toggleCandle:(id)sender {
	[myCandle setCandleState:![myCandle candleState]];

}

- (void)uiUpdateMethod {
	Candle *notiCandle = myCandle;
	
	if ([notiCandle candleState]) {
		[candleImageView setImage:[notiCandle candleOnImage]];
		onOffSwitch.on = YES;
		candleStateLabel.text = @"Candle is now on";
	}
	else {
		[candleImageView setImage:[notiCandle candleOffImage]];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}
}

@end
