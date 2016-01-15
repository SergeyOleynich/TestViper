//
//  MainTextRouterInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MainTextRouterInput <NSObject>

- (void)presentFromWindow:(UIWindow *)window;

- (void)showFromViewController:(UIViewController *)controller withText:(NSString *)text;

@end