//
//  MainTextViewController.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DispalyNewsTextViewInput.h"

@protocol DispalyNewsTextViewOutput;

@interface DispalyNewsTextViewController : UIViewController <DisplayNewsTextViewInput>

@property (nonatomic, weak) id<DispalyNewsTextViewOutput> output;

@end
