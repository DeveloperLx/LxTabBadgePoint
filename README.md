# LxTabBadgePoint
    Easily custom viewController's tabBar badge view. 

### Installation
    You only need drag UIViewController+LxTabBadgePoint.h and UIViewController+LxTabBadgePoint.m to your project.

### CocoaPods
    pod 'LxTabBadgePoint', '~> 1.0.0'

### Support
    Minimum support iOS version: iOS 6.0

### Usage
```objc
    #import "UIViewController+LxTabBadgePoint.h"

    //  Judge whether embed in tabbarController
    BOOL isEmbedInTabBarController = viewController.isEmbedInTabBarController;

    //  If yes, you can set showTabBadgePoint to show/hide tabBar badge view.
    viewController.showTabBadgePoint = YES/NO;

    //  Red point is default effect, you can change it to any you want view.
    viewController.tabBadgePointView = ...(You customed UIView object);

    //  You can adjust the tabBar badge view's position.
    viewController.tabBadgePointViewOffset = UIOffsetMake(3, 6);
```

### License
LxTabBadgePoint is available under the MIT License. See the LICENSE file for more info.