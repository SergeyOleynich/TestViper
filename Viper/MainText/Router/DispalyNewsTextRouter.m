//
//  MainTextRouter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "DispalyNewsTextRouter.h"
#import <HelperFunctions.h>

@implementation DispalyNewsTextRouter

#pragma mark - MainTextRouterInput

- (void)presentFromWindow:(UIWindow *)window
{
    BLHFDispatchToMainQueue(^{
        [window setRootViewController:(UIViewController *)self.presenter.view];
        [window makeKeyAndVisible];
    });
}

-(void)showFromViewController:(UIViewController *)vc
{
    [vc.navigationController pushViewController:(UIViewController *)self.presenter.view animated:YES];
}

- (void)popVC
{
    [[(UIViewController *)self.presenter.view navigationController] popViewControllerAnimated:YES];
}

- (void)dealloc
{
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

@end