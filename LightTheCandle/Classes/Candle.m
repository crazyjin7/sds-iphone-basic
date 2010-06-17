//
//  Candle.m
//  LightTheCandle
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import "Candle.h"


@implementation Candle

- (id)init {
	
	self = [super init];
	if (self != nil) {
		//초기화
		candleState = NO;
		NSString *candleOnPath = [[NSBundle mainBundle] pathForResource:@"candle on" ofType:@"jpg"];
		NSString *candleOffPath = [[NSBundle mainBundle] pathForResource:@"candle off" ofType:@"jpg"];
		
		candleOffImage = [[UIImage alloc] initWithContentsOfFile:candleOffPath];
		candleOnImage = [[UIImage alloc] initWithContentsOfFile:candleOnPath];
	}
	return self;
}

- (BOOL)candleState {
	return candleState;
}
- (void)setCandleState:(BOOL)newState {
	candleState = newState;
	
	[[NSNotificationCenter defaultCenter] postNotificationName:@"CandleDidChanged"
														object:self
													  userInfo:nil];	
}

- (UIImage *)candleOffImage {
	return candleOffImage;
}
- (void)setCandleOffImage:(UIImage *)newImage {
	UIImage *oldImage = candleOffImage;
	if (oldImage != newImage) {
		candleOffImage = [newImage retain];
		if (oldImage != nil) {
			[oldImage release];
		}
	}
}

- (UIImage *)candleOnImage {
	return candleOnImage;
}
- (void)setCandleOnImage:(UIImage *)newImage {
	UIImage *oldImage = candleOnImage;
	if (oldImage != newImage) {
		candleOnImage = [newImage retain];
		if (oldImage != nil) {
			[oldImage release];
		}
	}
}

@end
