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
#import "NewsDomainModule.h"

//helpers
#import <HelperFunctions.h>

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
    BLHFDispatchToBackgroundQueue(^{
        [self.interactor requestData];
    });
}

- (void)didSelectNews:(NSString *)newsID
{
    BLHFDispatchToMainQueue(^{
        [self.newsReader configureModuleWithNewsID:newsID];
        [self.router showNews];
    });
}

#pragma mark - Методы ChooseInteractorOutput

- (void)dataIsReady:(NSArray *)data
{
    BLHFDispatchToMainQueue(^{
        [self.view updateWithNews:data];
    });
    
}

- (id<MainTextModuleInput>)newsReader {
    if (!_newsReader) {
        _newsReader = [MainTextAssembly createModule];
    }
    return _newsReader;
}

@end