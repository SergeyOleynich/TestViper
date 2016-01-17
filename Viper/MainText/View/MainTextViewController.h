//
//  MainTextViewController.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainTextViewInput.h"

@protocol MainTextViewOutput;

@interface MainTextViewController : UIViewController <MainTextViewInput>

@property (nonatomic, weak) id<MainTextViewOutput> output;

@end
