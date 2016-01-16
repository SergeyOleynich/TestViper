//
//  ChoosePresenter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChoosePresenter.h"

//helpers
#import <HelperFunctions.h>

#import "ChooseViewInput.h"
#import "ChooseInteractorInput.h"
#import "ChooseRouterInput.h"

#import "MainTextAssembly.h"
#import "MainTextModuleInput.h"

//models
#import "News.h"

@implementation ChoosePresenter

#pragma mark - Методы ChooseModuleInput

- (void)configureModule
{
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

- (void)presentFromWindow:(UIWindow *)window
{
    [self.router presentFromWindow:window];
}

- (void)presentFromNavigationController:(UIWindow *)window
{
    [self.router presentFromNavigationController:window];
}

#pragma mark - Методы ChooseViewOutput

- (void)didTriggerViewReadyEvent
{
    [self.view setupInitialState];
    [self.interactor requestData];
}

- (void)didSelectNews:(NSUInteger)newsID
{
    id <MainTextModuleInput> preloader = [MainTextAssembly createModule];
    BLHFDispatchToMainQueue(^{
        [preloader configureModuleWithNewsID:newsID];
        [preloader showNewsFromViewController:(UIViewController *)self.view];
    });
}

#pragma mark - Методы ChooseInteractorOutput

- (void)updatePresenterWithText:(NSArray *)news
{
    [self.view updateWithNews:news];
}

@end