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

- (void)showTextWindow:(NSString *)text;

@end