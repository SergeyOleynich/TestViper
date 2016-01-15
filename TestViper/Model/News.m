//
//  News.m
//  TestViper
//
//  Created by Sergey Oleynich on 1/15/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import "News.h"

static NSString *const newsDictionaryMainTextKey = @"mainText";
static NSString *const newsDictionaryTextKey = @"text";

@implementation News

-(instancetype)initWithDict:(NSDictionary *)dictionary {
    if (self = [super init]) {
        
#ifdef DEBUG
        NSAssert(dictionary[newsDictionaryMainTextKey] != nil, @"news dictionary should have text");
#endif
        
        if ([dictionary objectForKey:newsDictionaryMainTextKey]) {
            _newsMainText = dictionary[newsDictionaryMainTextKey];
        }
        if ([dictionary objectForKey:newsDictionaryMainTextKey]) {
            _newsText = dictionary[newsDictionaryTextKey];
        }
    }
    return self;
}

@end
