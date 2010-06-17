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

@property (assign) BOOL candleState;
@property (retain) UIImage *candleOffImage;
@property (retain) UIImage *candleOnImage;

@end
