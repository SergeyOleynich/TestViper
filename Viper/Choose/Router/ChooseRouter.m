//
//  ChooseRouter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseRouter.h"
#import <HelperFunctions.h>

#import "MainTextAssembly.h"
#import "MainTextRouterInput.h"

@implementation ChooseRouter

#pragma mark - ChooseRouterInput

- (void)presentFromWindow:(UIWindow *)window
{
    BLHFDispatchToMainQueue(^{
        UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:(UIViewController *)self.presenter.view];
        [window setRootViewController:navVC];
        [window makeKeyAndVisible];
    });
    /*
    BRLDispatchToMainQueue(^{
        
    });
     */
}

- (void)showTextWindow:(NSString *)text {
    
    id <MainTextRouterInput> router = [MainTextAssembly createModule];
    
    BLHFDispatchToMainQueue(^{
        [router showFromViewController:(UIViewController *)self.presenter.view withText:text];
    });
}

@end