//
//  Candle.h
//  LightTheCandle
//
//  Created by SDS06 on 10. 6. 17..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CandleDelegate <NSObject>
- (void)uiUpdateMethod;
@end

@interface Candle : NSObject {
	id<CandleDelegate> delegate;
	
	BOOL candleState;
	UIImage *candleOffImage;
	UIImage *candleOnImage;	
}

@property (assign) id<CandleDelegate> delegate;

- (BOOL)candleState;
- (void)setCandleState:(BOOL)newState;

- (UIImage *)candleOffImage;
- (void)setCandleOffImage:(UIImage *)newImage;

- (UIImage *)candleOnImage;
- (void)setCandleOnImage:(UIImage *)newImage;

@end
