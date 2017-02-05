//
//  AppDelegate.h
//  Project You
//
//  Created by Justin Rowe on 2/4/17.
//  Copyright © 2017 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class LoginViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIViewController *viewController;
@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (strong, nonatomic) LoginViewController * loginViewController;

- (void)saveContext;

- (void)presentLoginViewController;
- (void)presentMainViewController;

@end

