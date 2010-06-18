//
//  CanvasView.m
//  SimpleSketch
//
//  Created by SDS06 on 10. 6. 18..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import "CanvasView.h"


@implementation CanvasView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
		CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
		cgContext = CGBitmapContextCreate(NULL, 
										  frame.size.width, 
										  frame.size.height, 
										  8, 
										  4 * frame.size.width, 
										  colorSpace, 
										  kCGImageAlphaPremultipliedFirst);
		CGColorSpaceRelease(colorSpace);
		
		CGContextSetLineWidth(cgContext, 25);
		CGContextSetLineCap(cgContext, kCGLineCapRound);
		CGContextSetRGBStrokeColor(cgContext, 1.0, 1.0, 1.0, 1.0);
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
	CGRect bounds = [self bounds];
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGImageRef image = CGBitmapContextCreateImage(cgContext);
	CGContextDrawImage(context, bounds, image);
	CGImageRelease(image);
}

- (void)dealloc {
    [super dealloc];
}

#pragma mark -
#pragma mark Touch event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"Touch Began");
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"Touch Moved");
	
	UITouch *touch;
	
	for (touch in touches) {
		CGPoint location = [touch locationInView:self];
		CGPoint prevLocation = [touch previousLocationInView:self];
		NSLog(@"PrevLoc = %@, Loc = %@", NSStringFromCGPoint(location), NSStringFromCGPoint(prevLocation));
		
		CGContextBeginPath(cgContext);
		CGContextMoveToPoint(cgContext, prevLocation.x, prevLocation.y);
		CGContextAddLineToPoint(cgContext, location.x, location.y);
		CGContextStrokePath(cgContext);
	}
	[self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"Touch Ended");
}

@end
