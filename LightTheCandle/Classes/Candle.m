//
//  Candle.m
//  LightTheCandle
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import "Candle.h"


@implementation Candle

@synthesize candleState;
@synthesize candleOffImage;
@synthesize candleOnImage;

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

- (void)dealloc {
	[candleOffImage release];
	[candleOnImage release];
	[super dealloc];
}
@end
