//
//  HelicopterAppDelegate.h
//  Helicopter
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface HelicopterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UIImageView *helicopterImageView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIImageView *helicopterImageView;

- (IBAction)toggleFly:(id)sender;
- (IBAction)moveThroughPath:(id)sender;

@end

