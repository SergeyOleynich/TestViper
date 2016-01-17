//
//  MainTextViewController.m
//  TestViper
//
//  Created by Sergey Oleynich on 15/01/2016.
//  Copyright 2016 SergeyC. All rights reserved.
//

#import "DispalyNewsTextViewController.h"

#import "DispalyNewsTextViewOutput.h"
#import "SOTextView.h"

#import "NewsDomainModule.h"

@interface DispalyNewsTextViewController () <UITextViewDelegate>

@property (nonatomic, weak) IBOutlet SOTextView *mainTextView;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;

- (IBAction)backAction:(UIButton *)sender;

@end

@implementation DispalyNewsTextViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.mainTextView layoutIfNeeded];
    [self.mainTextView setContentOffset:CGPointZero];
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
    self.mainTextView.delegate = self;
}

- (void)updateWithData:(NewsDomainModule *)module
{
    self.titleLabel.text = module.newsTitle;
    self.mainTextView.text = module.newsText;
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



