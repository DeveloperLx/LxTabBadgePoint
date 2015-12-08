//
//  ViewController.m
//  LxTabBadgePointDemo
//
//  Created by DeveloperLx on 15/11/23.
//  Copyright © 2015年 DeveloperLx. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+LxTabBadgePoint.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithHue:arc4random()%100/100.0 saturation:arc4random()%100/100.0 brightness:arc4random()%100/100.0 alpha:1];
    
    UIButton * handleTabPointButton = [UIButton buttonWithType:UIButtonTypeCustom];
    handleTabPointButton.showsTouchWhenHighlighted = YES;
    handleTabPointButton.titleLabel.font = [UIFont systemFontOfSize:20];
    handleTabPointButton.backgroundColor = [UIColor whiteColor];
    [handleTabPointButton setTitle:@"show badge view" forState:UIControlStateNormal];
    [handleTabPointButton setTitle:@"hide badge view" forState:UIControlStateSelected];
    [handleTabPointButton setTitleColor:self.view.backgroundColor forState:UIControlStateNormal];
    [handleTabPointButton addTarget:self action:@selector(handleTabPointButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:handleTabPointButton];

    handleTabPointButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint * handleTabPointButtonCenterXConstraint =
    [NSLayoutConstraint constraintWithItem:handleTabPointButton
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint * handleTabPointButtonCenterYConstraint =
    [NSLayoutConstraint constraintWithItem:handleTabPointButton
                                 attribute:NSLayoutAttributeCenterY
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterY
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint * handleTabPointButtonWidthConstraint =
    [NSLayoutConstraint constraintWithItem:handleTabPointButton
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1
                                  constant:120];
    
    NSLayoutConstraint * handleTabPointButtonHeightConstraint =
    [NSLayoutConstraint constraintWithItem:handleTabPointButton
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1
                                  constant:60];
    
    [self.view addConstraints:@[handleTabPointButtonCenterXConstraint,
                                handleTabPointButtonCenterYConstraint,
                                handleTabPointButtonWidthConstraint,
                                handleTabPointButtonHeightConstraint]];
}

- (void)handleTabPointButtonClicked:(UIButton *)btn
{
    btn.selected = self.navigationController.showTabBadgePoint = !self.navigationController.showTabBadgePoint;
}

@end
