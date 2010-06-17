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

    myCandleDict = [[NSMutableDictionary alloc] initWithCapacity:10];
	
	BOOL candleState = NO;
	NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
	NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];

	UIImage *candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
	UIImage *candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	
	[myCandleDict setValue:[NSNumber numberWithBool:candleState] forKey:@"candleState"];
	[myCandleDict setValue:candleOffImage forKey:@"candleOffImage"];
	[myCandleDict setValue:candleOnImage forKey:@"candleOnImage"];
	
	[candleImageView setImage:[myCandleDict valueForKey:@"candleOffImage"]];
	onOffSwitch.on = [[myCandleDict valueForKey:@"candleState"] boolValue];
	candleStateLabel.text = @"Candle is Off. please light on.";
	
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
	[myCandleDict release];
    [super dealloc];
}

- (IBAction)toggleCandle:(id)sender {
	BOOL candleState = [[myCandleDict valueForKey:@"candleState"] boolValue];
	[myCandleDict setValue:[NSNumber numberWithBool:!candleState] forKey:@"candleState"];
	
	if (!candleState) {
		[candleImageView setImage:[myCandleDict valueForKey:@"candleOnImage"]];
		onOffSwitch.on = YES;
		candleStateLabel.text = @"Candle is now on";
	}
	else {
		[candleImageView setImage:[myCandleDict valueForKey:@"candleOffImage"]];
		onOffSwitch.on = NO;
		candleStateLabel.text = @"Candle is Off. please light on";
	}

}


@end
