//
//  MainTextModuleInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MainTextModuleInput <NSObject>

/**
 @author Sergey Oleynich

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModuleWithText:(NSString *)text;

@end