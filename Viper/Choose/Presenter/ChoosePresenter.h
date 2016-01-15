//
//  ChoosePresenter.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseViewOutput.h"
#import "ChooseInteractorOutput.h"
#import "ChooseModuleInput.h"

@protocol ChooseViewInput;
@protocol ChooseInteractorInput;
@protocol ChooseRouterInput;

@interface ChoosePresenter : NSObject <ChooseModuleInput, ChooseViewOutput, ChooseInteractorOutput>

@property (nonatomic, weak) id<ChooseViewInput> view;
@property (nonatomic, strong) id<ChooseInteractorInput> interactor;
@property (nonatomic, strong) id<ChooseRouterInput> router;

@end
