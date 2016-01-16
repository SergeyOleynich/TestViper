//
//  News.h
//  TestViper
//
//  Created by Sergey Oleynich on 1/15/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

- (instancetype)initWithDict:(NSDictionary *)dictionary;

@property (nonatomic, copy, readonly) NSString *newsMainText;
@property (nonatomic, assign, readonly) NSUInteger newsID;

@end
