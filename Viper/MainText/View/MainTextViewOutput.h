//
//  MainTextViewOutput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MainTextViewOutput <NSObject>

/**
 @author Sergey Oleynich

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

- (void)didSelectBackButton;

@end