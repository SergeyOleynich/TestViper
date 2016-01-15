//
//  MainTextInteractor.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "MainTextInteractorInput.h"

@protocol MainTextInteractorOutput;

@interface MainTextInteractor : NSObject <MainTextInteractorInput>

@property (nonatomic, weak) id<MainTextInteractorOutput> output;

@end