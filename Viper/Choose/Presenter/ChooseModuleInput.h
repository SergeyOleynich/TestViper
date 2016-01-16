//
//  ChooseModuleInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ChooseModuleInput <NSObject>

/**
 @author Sergey Oleynich

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

- (void)presentFromWindow:(UIWindow *)window;
- (void)presentFromNavigationController:(UIWindow *)window;

@end