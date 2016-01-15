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

@property (weak, nonatomic) IBOutlet SOTextView *mainTextView;

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

#pragma mark - Методы MainTextViewInput

- (void)setupInitialStateWithText:(NSString *)text {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
    self.mainTextView.delegate = self;
    [self.mainTextView layoutIfNeeded];
    self.mainTextView.text = text;
    [self.mainTextView scrollRectToVisible:CGRectMake(0, 0, 1, 1) animated:NO];
}

-(void)dealloc {
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
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

@end