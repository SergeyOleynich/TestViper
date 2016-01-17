//
//  ChooseRouter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseRouter.h"

#import "MainTextModuleInput.h"

//helpers
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

- (void)showNews
{
    BLHFDispatchToMainQueue(^{
        [self.presenter.newsReader showNewsFromViewController:(UIViewController *)self.presenter.view];
    });
}

- (void)showNewsWithID:(NSInteger)newsID {
    
    
}

@end