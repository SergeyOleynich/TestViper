//
//  AppDelegate.m
//  TestViper
//
//  Created by Sergey Oleynich on 1/15/16.
//  Copyright © 2016 Sergey Oleynich. All rights reserved.
//

#import "AppDelegate.h"
#import "ChooseAssembly.h"
#import "ChooseModuleInput.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    id <ChooseModuleInput> preloader = [ChooseAssembly createModule];
    [preloader presentFromNavigationController:self.window];
    
    return YES;
}

#pragma mark - Helpers UI methods

- (UIWindow *)window {
    if (!_window) {
        _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        _window.backgroundColor = [UIColor blackColor];
    }
    return _window;
}

@end
