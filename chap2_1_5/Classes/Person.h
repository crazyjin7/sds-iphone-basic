//
//  Person.h
//  chap2_1_5
//
//  Created by SDS06 on 10. 6. 16..
//  Copyright 2010 sds_multicampus. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
	//멤버변수
	NSString *name;
}

//메소드
- (void)singASong;
- (NSString*)name;
- (void)setName:(NSString*)newName;

@end
