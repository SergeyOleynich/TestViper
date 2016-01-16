//
//  ChooseViewInput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChooseViewInput <NSObject>

/**
 @author Sergey Oleynich

 Метод настраивает начальный стейт view
 */

- (void)setupInitialState;
- (void)updateWithNews:(NSArray *)news;

@end