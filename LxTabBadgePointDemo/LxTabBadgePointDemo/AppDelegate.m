//
//  AppDelegate.m
//  LxTabBadgePointDemo
//
//  Created by DeveloperLx on 15/11/23.
//  Copyright © 2015年 DeveloperLx. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "UIViewController+LxTabBadgePoint.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    ViewController * vc1 = [[ViewController alloc]init];
    vc1.title = @"vc1";
    
    ViewController * vc2 = [[ViewController alloc]init];
    vc2.title = @"vc2";
    
    ViewController * vc3 = [[ViewController alloc]init];
    vc3.title = @"vc3";
    
    ViewController * vc4 = [[ViewController alloc]init];
    vc4.title = @"vc4";
    
    UINavigationController * nc1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    UINavigationController * nc2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    UINavigationController * nc3 = [[UINavigationController alloc]initWithRootViewController:vc3];
    UINavigationController * nc4 = [[UINavigationController alloc]initWithRootViewController:vc4];    
    
    UITabBarController * tbc = [[UITabBarController alloc]init];
    tbc.viewControllers = @[nc1, nc2, nc3, nc4];
    
    nc2.tabBadgePointView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"audio_pause"]];
    nc3.tabBadgePointView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"exclamation"]];
    nc4.tabBadgePointView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fans_each_other"]];
    
    self.window.rootViewController = tbc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
