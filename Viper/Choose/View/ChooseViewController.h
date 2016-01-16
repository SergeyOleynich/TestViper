//
//  ChooseViewController.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ChooseViewInput.h"
#import "ChooseRouterInput.h"

@protocol ChooseViewOutput;

@interface ChooseViewController : UITableViewController <ChooseViewInput>

@property (nonatomic, strong) id<ChooseViewOutput> output;

@end
