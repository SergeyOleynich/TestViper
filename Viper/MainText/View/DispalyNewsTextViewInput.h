//
//  MainTextViewInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NewsDomainModule;

@protocol DisplayNewsTextViewInput <NSObject>

- (void)setupInitialState;
- (void)updateWithData:(NewsDomainModule *)module;

@end