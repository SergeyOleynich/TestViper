//
//  MainTextInteractor.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "DispalyNewsTextInteractorInput.h"

@protocol DispalyNewsTextInteractorOutput;

@interface DispalyNewsTextInteractor : NSObject <DispalyNewsTextInteractorInput>

@property (nonatomic, weak) id<DispalyNewsTextInteractorOutput> output;

@end