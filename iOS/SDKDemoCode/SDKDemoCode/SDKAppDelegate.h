//
//  SDKAppDelegate.h
//  SDKDemoCode
//
//  Created by survey on 16/04/14.
//  Copyright (c) 2014 survey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SDKViewController;
@interface SDKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SDKViewController *viewController;
@property (nonatomic,retain) IBOutlet UINavigationController* nav;

@end
