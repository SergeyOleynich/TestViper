//
//  ChooseAssembly.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseAssembly.h"

#import "ChooseViewController.h"
#import "ChooseInteractor.h"
#import "ChoosePresenter.h"
#import "ChooseRouter.h"

#import "DisplayNewsTextAssembly.h"

@implementation ChooseAssembly

+ (id <ChooseModuleInput>)createModule
{
    ChooseViewController *view = [self viewController];
	// uncomment if need view preloading
    // [view view]; 
    ChooseInteractor *interactor = [ChooseInteractor new];
    ChoosePresenter *presenter = [ChoosePresenter new];
    ChooseRouter *router = [ChooseRouter new];
    
	router.presenter = presenter;
	
    view.output = presenter;
    interactor.output = presenter;
    
    presenter.view = view;
    presenter.interactor = interactor;
    presenter.router = router;
    [presenter configureModule];
    
    presenter.newsReader = [DisplayNewsTextAssembly createModule];
    
    return presenter;
}

+ (ChooseViewController *)viewController {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ChooseViewController * vc = (ChooseViewController *)[sb instantiateViewControllerWithIdentifier:@"ChooseViewController"];
    return vc;
}

@end