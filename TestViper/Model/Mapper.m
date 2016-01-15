//
//  Mapper.m
//  TestViper
//
//  Created by Sergey Oleynich on 1/15/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import "Mapper.h"

//News
#import "News.h"

@implementation Mapper

+ (NSArray *)mapperDictionaryForNews:(NSArray *)array {
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *newsDict in array) {
        News *new = [[News alloc] initWithDict:newsDict];
        [arrayM addObject:new];
    }
    return (NSArray *)arrayM;
}

@end
