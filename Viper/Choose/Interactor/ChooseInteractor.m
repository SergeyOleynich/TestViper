//
//  ChooseInteractor.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseInteractor.h"

#import "ChooseInteractorOutput.h"

#import "Mapper.h"

@implementation ChooseInteractor

#pragma mark - Методы ChooseInteractorInput

- (void)requestData {
    NSArray *news = @[@{@"id" : @0, @"mainText" : @"Lorem ipsum"},
                      @{@"id" : @1, @"mainText" : @"My text"}];
    
    [self.output dataIsReady:[Mapper mapperDictionaryForNews:news]];
}

@end