//
//  ChoosePresenter.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChoosePresenter.h"

#import "ChooseViewInput.h"
#import "ChooseInteractorInput.h"
#import "ChooseRouterInput.h"

//models
#import "News.h"

@interface ChoosePresenter ()

@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation ChoosePresenter

#pragma mark - Методы ChooseModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы ChooseViewOutput

- (void)didTriggerViewReadyEvent {
    [self.view tableView].delegate = self;
    [self.view tableView].dataSource = self;
    [self.interactor requestData];
	[self.view setupInitialState];
}

#pragma mark - Методы ChooseInteractorOutput

- (void)updatePresenterWithText:(NSArray *)news {
    self.dataSource = news;
    [[self.view tableView] reloadData];
}

#pragma mark - TableViewProtocol

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    News *new = self.dataSource[indexPath.row];
    cell.textLabel.text = new.newsMainText;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    News *new = self.dataSource[indexPath.row];
    
    [self.router showTextWindow:new.newsText];
    
}

@end