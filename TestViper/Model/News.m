//
//  News.m
//  TestViper
//
//  Created by Sergey Oleynich on 1/15/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import "News.h"

static NSString *const newsDictionaryMainTextKey = @"mainText";
static NSString *const newsDictionaryIDKey = @"id";

@implementation News

-(instancetype)initWithDict:(NSDictionary *)dictionary
{
    if (self = [super init])
    {        
        if ([dictionary objectForKey:newsDictionaryMainTextKey])
        {
            _newsMainText = dictionary[newsDictionaryMainTextKey];
        }
        if (dictionary[newsDictionaryIDKey])
        {
            _newsID = [dictionary[newsDictionaryIDKey] integerValue];
        }
    }
    return self;
}

@end
