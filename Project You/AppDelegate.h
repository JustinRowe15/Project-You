//
//  AppDelegate.h
//  Project You
//
//  Created by Justin Rowe on 2/4/17.
//  Copyright © 2017 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

