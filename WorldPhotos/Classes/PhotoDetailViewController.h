//
//  PhotoDetailViewController.h
//  WorldPhotos
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoDetailViewController : UIViewController {
	NSDictionary *photoData;
	UIImageView *photoImageView;
	
	UIBarButtonItem *mapBarButton;
}

@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet UIImageView *photoImageView;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *mapBarButton;

- (IBAction)goToMapView:(id)sender;

@end
