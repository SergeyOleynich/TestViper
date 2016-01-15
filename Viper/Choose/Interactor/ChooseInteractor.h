//
//  ChooseInteractor.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseInteractorInput.h"

@protocol ChooseInteractorOutput;

@interface ChooseInteractor : NSObject <ChooseInteractorInput>

@property (nonatomic, weak) id<ChooseInteractorOutput> output;

@end