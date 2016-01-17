//
//  NewsDomainModule.m
//  TestViper
//
//  Created by Sergey Oleynich on 1/17/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import "NewsDomainModule.h"

static NSString *const kNewsDictionaryMainTextKey = @"mainText";
static NSString *const kNewsDictionaryIDKey = @"id";

@implementation NewsDomainModule

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (self = [super init])
    {
        if ([dictionary objectForKey:kNewsDictionaryMainTextKey])
        {
            _newsTitle = dictionary[kNewsDictionaryMainTextKey];
        }
        if (dictionary[kNewsDictionaryIDKey])
        {
            _newsId = dictionary[kNewsDictionaryIDKey];
        }
    }
    return self;
}

@end
