//
//  MainTextModuleInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MainTextModuleInput <NSObject>

/**
 @author Sergey Oleynich

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModuleWithNewsID:(NSUInteger)newsID;

- (void)showNewsFromViewController:(UIViewController *)vc;

@end