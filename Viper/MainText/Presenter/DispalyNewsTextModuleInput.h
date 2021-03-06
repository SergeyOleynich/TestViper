//
//  MainTextModuleInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol DisplayNewsTextModuleInput <NSObject>

- (void)configureModuleWithNewsID:(NSString *)newsID;
- (void)showNewsFromViewController:(UIViewController *)vc;

@end