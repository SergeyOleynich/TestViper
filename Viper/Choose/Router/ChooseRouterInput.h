//
//  ChooseRouterInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ChooseRouterInput <NSObject>

- (void)presentFromWindow:(UIWindow *)window;
- (void)presentFromNavigationController:(UIWindow *)window;

- (void)showNewsWithID:(NSInteger)newsID;
- (void)showNews;

@end