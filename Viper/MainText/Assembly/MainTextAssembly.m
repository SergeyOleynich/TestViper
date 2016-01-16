//
//  MainTextAssembly.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "MainTextAssembly.h"

#import "MainTextViewController.h"
#import "MainTextInteractor.h"
#import "MainTextPresenter.h"
#import "MainTextRouter.h"

@implementation MainTextAssembly


+ (id <MainTextModuleInput>)createModule
{
    MainTextViewController *view = [self viewController];
	// uncomment if need view preloading
    // [view view]; 
    MainTextInteractor *interactor = [MainTextInteractor new];
    MainTextPresenter *presenter = [MainTextPresenter new];
    MainTextRouter *router = [MainTextRouter new];
    
	router.presenter = presenter;
	
    view.output = presenter;
    interactor.output = presenter;
    
    presenter.view = view;
    presenter.interactor = interactor;
    presenter.router = router;
    
    return presenter;
}

+ (MainTextViewController *)viewController {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MainTextViewController * vc = (MainTextViewController *)[sb instantiateViewControllerWithIdentifier:@"MainTextViewController"];
    return vc;
}

-(void)dealloc {
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

@end