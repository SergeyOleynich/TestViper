//
//  MainTextAssembly.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "DisplayNewsTextAssembly.h"

#import "DispalyNewsTextViewController.h"
#import "DispalyNewsTextInteractor.h"
#import "DispalyNewsTextPresenter.h"
#import "DispalyNewsTextRouter.h"

@implementation DisplayNewsTextAssembly


+ (id <DisplayNewsTextModuleInput>)createModule
{
    DispalyNewsTextViewController *view = [self viewController];
	// uncomment if need view preloading
    // [view view]; 
    DispalyNewsTextInteractor *interactor = [DispalyNewsTextInteractor new];
    DispalyNewsTextPresenter *presenter = [DispalyNewsTextPresenter new];
    DispalyNewsTextRouter *router = [DispalyNewsTextRouter new];
    
	router.presenter = presenter;
	
    view.output = presenter;
    interactor.output = presenter;
    
    presenter.view = view;
    presenter.interactor = interactor;
    presenter.router = router;
    
    return presenter;
}

+ (DispalyNewsTextViewController *)viewController {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DispalyNewsTextViewController * vc = (DispalyNewsTextViewController *)[sb instantiateViewControllerWithIdentifier:@"DispalyNewsTextViewController"];
    return vc;
}

-(void)dealloc {
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

@end