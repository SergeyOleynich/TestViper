//
//  ChooseViewController.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "ChooseViewController.h"

#import "ChooseViewOutput.h"
#import "TableViewProtocol.h"

//models
#import "NewsDomainModule.h"

@interface ChooseViewController () <TableViewProtocol>

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ChooseViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad
{
	[super viewDidLoad];
	[self.output didTriggerViewReadyEvent];
}

#pragma mark - Методы ChooseViewInput

- (void)setupInitialState
{
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)updateWithNews:(NSArray *)news
{
    self.dataSource = news;
    [self.tableView reloadData];
}

#pragma mark - TableViewProtocol

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSUInteger index = indexPath.row;
    NewsDomainModule *new = self.dataSource[index];
    cell.textLabel.text = new.newsTitle;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger index = indexPath.row;
    if (index < self.dataSource.count)
    {
        NewsDomainModule *news = self.dataSource[indexPath.row];
        [self.output didSelectNews:news.newsId];
    }
}

@end


