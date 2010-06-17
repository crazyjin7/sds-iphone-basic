//
//  LightTheCandleAppDelegate.h
//  LightTheCandle
//
//  Created by SDS06 on 10. 6. 16..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Candle.h"

@interface LightTheCandleAppDelegate : NSObject <UIApplicationDelegate, CandleDelegate> {
    UIWindow *window;
	
	Candle *myCandle;
	
	UIImageView *candleImageView;
	UISwitch *onOffSwitch;
	UILabel *candleStateLabel;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIImageView *candleImageView;
@property (nonatomic, retain) IBOutlet UISwitch *onOffSwitch;
@property (nonatomic, retain) IBOutlet UILabel *candleStateLabel;

- (IBAction)toggleCandle:(id)sender;


@end

