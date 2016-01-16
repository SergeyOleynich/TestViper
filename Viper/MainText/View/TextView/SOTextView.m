//
//  SOTextView.m
//  TestText
//
//  Created by Sergey Oleynich on 1/9/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import "SOTextView.h"

@interface SOTextView () <UIScrollViewDelegate>

@property (assign, nonatomic) NSInteger pointY;
@property (assign, nonatomic) BOOL shouldAnimating;

@end

@implementation SOTextView

#pragma mark - Initialization

-(instancetype)init {
    if (self = [super init]) {
        [self setupView];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    self.shouldAnimating = YES;
    self.editable = NO;
    //id nav = [UIApplication sharedApplication].keyWindow.rootViewController;
    //if ([nav isKindOfClass:[UINavigationController class]]) {
        //self.pointY = -CGRectGetMaxY([(UINavigationController *)nav navigationBar].frame);
    //}
}

-(void)dealloc {
    NSLog(@"%s %@", __PRETTY_FUNCTION__, NSStringFromClass([self class]));
}

#pragma mark - Overriden

#pragma mark - Helpers methods

- (void)animateText {
    
    self.pointY = self.pointY + 1;
        self.contentOffset = CGPointMake(0, self.pointY);
    if (self.contentSize.height - CGRectGetHeight(self.frame) <= self.pointY) {
        return ;
    }
    if (!self.shouldAnimating) {
        self.pointY = self.pointY - 1;
        return;
    }
    __weak typeof(self)weakSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf animateText];
    });
    
    
}

#pragma mark - Override

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (action == @selector(copy:))
        return YES;
    return NO;
}

#pragma mark - Touches

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (self.shouldAnimating) {
        self.shouldAnimating = NO;
    } else {
        self.shouldAnimating = YES;
        [self animateText];
    }
}

#pragma mark - Public methods

-(void)touchTextView {
    self.shouldAnimating = NO;
}

-(void)unTouchTextView {
    self.shouldAnimating = YES;
    self.pointY = self.contentOffset.y;
    [self animateText];
}


@end
