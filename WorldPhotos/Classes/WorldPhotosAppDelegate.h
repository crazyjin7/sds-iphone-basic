//
//  WorldPhotosAppDelegate.h
//  WorldPhotos
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright sds_multicampus 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorldPhotosAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
	
	NSArray *photoArray;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (readonly) NSArray *phohoArray;

- (NSArray *)createPhotoData;

@end

