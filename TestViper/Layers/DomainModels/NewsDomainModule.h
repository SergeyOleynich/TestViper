//
//  NewsDomainModule.h
//  TestViper
//
//  Created by Sergey Oleynich on 1/17/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsDomainModule : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, strong) NSString *newsId;
@property (nonatomic, strong) NSString *newsTitle;
@property (nonatomic, strong) NSString *newsText;

@end
