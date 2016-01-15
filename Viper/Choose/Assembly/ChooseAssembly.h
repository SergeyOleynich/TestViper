//
//  ChooseAssembly.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChooseRouterInput;

/**
 @author Sergey Oleynich

 Choose module
 */
@interface ChooseAssembly : NSObject

+ (id <ChooseRouterInput>)createModule;


@end