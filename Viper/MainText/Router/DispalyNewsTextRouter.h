//
//  MainTextRouter.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "DispalyNewsTextRouterInput.h"

#import "DispalyNewsTextPresenter.h"

@interface DispalyNewsTextRouter : NSObject <DispalyNewsTextRouterInput>

@property (nonatomic,weak) DispalyNewsTextPresenter *presenter;

@end