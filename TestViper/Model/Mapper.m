//
//  Mapper.m
//  TestViper
//
//  Created by Sergey Oleynich on 1/15/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import "Mapper.h"

//News
#import "NewsDomainModule.h"

@implementation Mapper

+ (NSArray *)mapperDictionaryForNews:(NSArray *)array
{
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *newsDict in array)
    {
        NewsDomainModule *news = [[NewsDomainModule alloc] initWithDictionary:newsDict];
        [arrayM addObject:news];
    }
    return (NSArray *)arrayM;
}

@end
