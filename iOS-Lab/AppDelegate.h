//
//  AppDelegate.h
//  iOS-Lab
//
//  Created by Saulo Tauil on 2016-11-04.
//  Copyright © 2016 Saulo Tauil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

