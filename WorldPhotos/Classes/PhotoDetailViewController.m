//
//  PhotoDetailViewController.m
//  WorldPhotos
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "PhotoMapViewController.h"

@implementation PhotoDetailViewController

@synthesize photoData;
@synthesize photoImageView;
@synthesize mapBarButton;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.navigationItem.rightBarButtonItem = mapBarButton;
	self.navigationItem.title = @"Photo Detail View";
	photoImageView.image = [photoData valueForKey:@"Photo"];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


- (IBAction)goToMapView:(id)sender {
	PhotoMapViewController *mapViewController = [[PhotoMapViewController alloc] initWithNibName:@"PhotoMapViewController"
																						 bundle:nil];
	mapViewController.photoData = photoData;
	[self.navigationController pushViewController:mapViewController
										 animated:YES];
	[mapViewController release];
}

@end
