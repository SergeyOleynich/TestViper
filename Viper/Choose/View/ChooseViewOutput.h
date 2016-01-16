//
//  ChooseViewOutput.h
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChooseViewOutput <NSObject>

/**
 @author Sergey Oleynich

 Метод сообщает презентеру о том, что view готова к работе
 */

//@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (void)didTriggerViewReadyEvent;
- (void)didSelectNews:(NSUInteger)newsID;

@end