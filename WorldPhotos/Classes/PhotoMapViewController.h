//
//  PhotoMapViewController.h
//  WorldPhotos
//
//  Created by SDS06 on 10. 6. 11..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface PhotoMapViewController : UIViewController {
	NSDictionary *photoData;
	MKMapView *mapView;
	
}
@property (retain) NSDictionary *photoData;
@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
