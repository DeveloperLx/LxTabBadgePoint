//
//  UIViewController+LxTabBadgePoint.h
//  LxTabBadgePointDemo
//
//  Created by DeveloperLx on 15/11/24.
//  Copyright © 2015年 DeveloperLx. All rights reserved.
//

/**
 *  @author DeveloperLx, 15-11-24 12:11:27
 *
 *  @TODO: Resolve can't set tabBadgePointView to nil.
 *
 */

#import <UIKit/UIKit.h>

@interface UIViewController (LxTabBadgePoint)

@property (nonatomic,assign) BOOL showTabBadgePoint;
@property (nonatomic,retain) UIView * tabBadgePointView;
@property (nonatomic,assign) UIOffset tabBadgePointViewOffset;

@property (nonatomic,readonly,getter = isEmbedInTabBarController) BOOL embedInTabBarController;
@property (nonatomic,readonly) NSInteger tabIndex;
@property (nonatomic,readonly) UIView * tabBarButton;

@end
