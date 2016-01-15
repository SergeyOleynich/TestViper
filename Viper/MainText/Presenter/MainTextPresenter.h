//
//  MainTextPresenter.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "MainTextViewOutput.h"
#import "MainTextInteractorOutput.h"
#import "MainTextModuleInput.h"

@protocol MainTextViewInput;
@protocol MainTextInteractorInput;
@protocol MainTextRouterInput;

@interface MainTextPresenter : NSObject <MainTextModuleInput, MainTextViewOutput, MainTextInteractorOutput>

@property (nonatomic, weak) id<MainTextViewInput> view;
@property (nonatomic, strong) id<MainTextInteractorInput> interactor;
@property (nonatomic, strong) id<MainTextRouterInput> router;

@end
