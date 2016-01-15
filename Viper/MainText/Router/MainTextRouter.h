//
//  MainTextRouter.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "MainTextRouterInput.h"

#import "MainTextPresenter.h"

@interface MainTextRouter : NSObject <MainTextRouterInput>

@property (nonatomic,weak) MainTextPresenter *presenter;

@end