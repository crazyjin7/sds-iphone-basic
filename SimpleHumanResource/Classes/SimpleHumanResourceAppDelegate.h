//
//  SimpleHumanResourceAppDelegate.h
//  SimpleHumanResource
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleHumanResourceAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSMutableArray *personnel;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (readonly) NSMutableArray *personnel;

- (NSArray *)createEmployee;

@end

