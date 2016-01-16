//
//  MainTextViewController.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "MainTextViewController.h"

#import "MainTextViewOutput.h"
#import "SOTextView.h"

@interface MainTextViewController () <UITextViewDelegate>

@property (nonatomic, weak) IBOutlet SOTextView *mainTextView;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;

- (IBAction)backAction:(UIButton *)sender;

@end

@implementation MainTextViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.mainTextView animateText];
}

- (void)dealloc
{
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

#pragma mark - Методы MainTextViewInput

- (void)setupInitialState
{
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    self.mainTextView.delegate = self;
}

- (void)takeMainText:(NSString *)mainText
{
    self.mainTextView.text = mainText;
    [self.mainTextView layoutIfNeeded];
    [self.mainTextView scrollRectToVisible:CGRectMake(0, 0, 1, 1) animated:NO];
}

- (void)takeTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.mainTextView touchTextView];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (!decelerate) {
        [self.mainTextView unTouchTextView];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self.mainTextView unTouchTextView];
}

#pragma mark - Actions

- (IBAction)backAction:(UIButton *)sender
{
    [self.output didSelectBackButton];
}

@end



