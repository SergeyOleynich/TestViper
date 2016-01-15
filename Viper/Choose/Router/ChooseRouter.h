//
//  ChooseRouter.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseRouterInput.h"

#import "ChoosePresenter.h"

@interface ChooseRouter : NSObject <ChooseRouterInput>

@property (nonatomic,weak) ChoosePresenter *presenter;

@end