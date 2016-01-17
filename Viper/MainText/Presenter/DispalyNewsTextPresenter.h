//
//  MainTextPresenter.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "DispalyNewsTextViewOutput.h"
#import "DispalyNewsTextInteractorOutput.h"
#import "DispalyNewsTextModuleInput.h"

@protocol DisplayNewsTextViewInput;
@protocol DispalyNewsTextInteractorInput;
@protocol DispalyNewsTextRouterInput;

@interface DispalyNewsTextPresenter : NSObject <DisplayNewsTextModuleInput, DispalyNewsTextViewOutput, DispalyNewsTextInteractorOutput>

@property (nonatomic, strong) id<DisplayNewsTextViewInput> view;
@property (nonatomic, strong) id<DispalyNewsTextInteractorInput> interactor;
@property (nonatomic, strong) id<DispalyNewsTextRouterInput> router;

@end
