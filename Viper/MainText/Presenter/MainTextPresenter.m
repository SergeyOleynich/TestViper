//
//  MainTextPresenter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "MainTextPresenter.h"

#import "MainTextViewInput.h"
#import "MainTextInteractorInput.h"
#import "MainTextRouterInput.h"

@interface MainTextPresenter ()

@property (assign, nonatomic) NSUInteger newsID;

@end

@implementation MainTextPresenter

#pragma mark - Методы MainTextModuleInput

- (void)configureModuleWithNewsID:(NSUInteger)newsID
{
    // Стартовая конфигурация модуля, не привязанная к состоянию view
    self.newsID = newsID;
}

- (void)showNewsFromViewController:(UIViewController *)vc
{
    //тут можно сделать router делегатом для перехода если нам надо как то кастомно показать?
    [vc.navigationController pushViewController:(UIViewController *)self.view animated:YES];
    //[self.router showFromViewController:vc];
}

#pragma mark - Методы MainTextViewOutput

- (void)didTriggerViewReadyEvent
{
    [self.view setupInitialState];
    [self.interactor getMainTextForID:self.newsID];
    [self.interactor getTitleForID:self.newsID];
}

- (void)didSelectBackButton
{
    [self.router popVC];
}

#pragma mark - Методы MainTextInteractorOutput

- (void)bringPresenterNewsText:(NSString *)text
{
    [self.view takeMainText:text];
}

- (void)bringTitle:(NSString *)title
{
    [self.view takeTitle:title];
}

-(void)dealloc
{
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

@end