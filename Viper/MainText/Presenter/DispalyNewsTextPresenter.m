//
//  MainTextPresenter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "DispalyNewsTextPresenter.h"

#import "DispalyNewsTextViewInput.h"
#import "DispalyNewsTextInteractorInput.h"
#import "DispalyNewsTextRouterInput.h"

#import <HelperFunctions.h>

@implementation DispalyNewsTextPresenter

#pragma mark - Методы MainTextModuleInput

- (void)configureModuleWithNewsID:(NSString *)newsID
{
    BLHFDispatchToBackgroundQueue(^{
        [self.interactor getDataForNewsID:newsID];
    });
}

- (void)showNewsFromViewController:(UIViewController *)vc
{
    [self.router showFromViewController:vc];
}

#pragma mark - Методы MainTextViewOutput

- (void)didTriggerViewReadyEvent
{
    [self.view setupInitialState];
}

- (void)didSelectBackButton
{
    [self.router popVC];
}

#pragma mark - Методы MainTextInteractorOutput

- (void)dataIsReady:(NewsDomainModule *)model
{
    BLHFDispatchToMainQueue(^{
        [self.view updateWithData:model];
    });
    
}

- (void)dealloc
{
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

@end