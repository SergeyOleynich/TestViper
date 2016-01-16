//
//  ChooseRouter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseRouter.h"
#import <HelperFunctions.h>

@implementation ChooseRouter

#pragma mark - ChooseRouterInput

- (void)presentFromWindow:(UIWindow *)window
{
    BLHFDispatchToMainQueue(^{
        [window setRootViewController:(UIViewController *)self.presenter.view];
        [window makeKeyAndVisible];
    });
}

- (void)presentFromNavigationController:(UIWindow *)window
{
    BLHFDispatchToMainQueue(^{
        UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:(UIViewController *)self.presenter.view];
        [window setRootViewController:navVC];
        navVC.navigationBarHidden = YES;
        [window makeKeyAndVisible];
    });
}

- (void)showNewsWithID:(NSInteger)newsID {
    
    
}

@end