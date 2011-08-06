//
//  uxAppDelegate.h
//  ux
//
//  Created by hatch2 on 11/08/06.
//  Copyright 2011年 hatch2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface uxAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
