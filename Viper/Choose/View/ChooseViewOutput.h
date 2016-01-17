//
//  ChooseViewOutput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChooseViewOutput <NSObject>

- (void)didTriggerViewReadyEvent;
- (void)didSelectNews:(NSString *)newsID;

@end