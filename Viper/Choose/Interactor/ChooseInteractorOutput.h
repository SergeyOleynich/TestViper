//
//  ChooseInteractorOutput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChooseInteractorOutput <NSObject>

- (void)dataIsReady:(NSArray *)data;

@end