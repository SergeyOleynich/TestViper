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

@property (strong, nonatomic) NSString *text;

@end

@implementation MainTextPresenter

#pragma mark - Методы MainTextModuleInput

- (void)configureModuleWithText:(NSString *)text {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
    self.text = text;
}

#pragma mark - Методы MainTextViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialStateWithText:self.text];
}

#pragma mark - Методы MainTextInteractorOutput

-(void)dealloc {
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

@end