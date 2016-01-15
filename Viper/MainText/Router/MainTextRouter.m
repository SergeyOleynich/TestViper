//
//  MainTextRouter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "MainTextRouter.h"
#import <HelperFunctions.h>

@implementation MainTextRouter

#pragma mark - MainTextRouterInput

- (void)presentFromWindow:(UIWindow *)window
{
    BLHFDispatchToMainQueue(^{
        [window setRootViewController:(UIViewController *)self.presenter.view];
        [window makeKeyAndVisible];
    });
}

-(void)showFromViewController:(UIViewController *)controller withText:(NSString *)text {
    [self.presenter configureModuleWithText:[text copy]];
    //[controller presentViewController:(UIViewController *)self.presenter.view animated:YES completion:nil];
    [controller.navigationController pushViewController:(UIViewController *)self.presenter.view animated:YES];
}

-(void)dealloc {
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

@end