//
//  Candle.h
//  LightTheCandle
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Candle : NSObject {
	BOOL candleState;
	UIImage *candleOffImage;
	UIImage *candleOnImage;	
}

- (BOOL)candleState;
- (void)setCandleState:(BOOL)newState;

- (UIImage *)candleOffImage;
- (void)setCandleOffImage:(UIImage *)newImage;

- (UIImage *)candleOnImage;
- (void)setCandleOnImage:(UIImage *)newImage;

@end
