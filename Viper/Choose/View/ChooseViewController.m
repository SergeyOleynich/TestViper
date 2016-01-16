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
#import "News.h"

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
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
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
    News *new = self.dataSource[index];
    cell.textLabel.text = new.newsMainText;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger index = indexPath.row;
    if (index < self.dataSource.count)
    {
        News *news = self.dataSource[indexPath.row];
        [self.output didSelectNews:news.newsID];
    }
}

@end


