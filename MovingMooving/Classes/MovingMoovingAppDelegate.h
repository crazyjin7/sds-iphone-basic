//
//  MovingMoovingAppDelegate.h
//  MovingMooving
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovingMoovingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIView *movingView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIView *movingView;

- (IBAction)move:(id)sender;


@end

