//
//  AppDelegate.m
//  skyer
//
//  Created by 李振 on 15/10/8.
//  Copyright (c) 2015年 skyer. All rights reserved.
//

#import "AppDelegate.h"
#import "SkyerJpushMessage.h"
#import "skJPUSHSet.h"
#import "SFHFKeychainUtils.h"


@interface AppDelegate ()

@end

@implementation AppDelegate 

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    application.applicationIconBadgeNumber=0;
    // Override point for customization after application launch.
    [self navState];
    [self configureAPIKey];
    //配置极光推送的key
    [[skJPUSHSet sharedskJPUSHSet] skJpushSet:launchOptions];
    return YES;
}

- (void)navState{
    [IQKeyboardManagerShare initIQKeyboardManager];
    //@{}代表Dictionary
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName : [UIFont boldSystemFontOfSize:17]}];
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
}
- (void)configureAPIKey
{
    [[AMapServices sharedServices] setEnableHTTPS:YES];
    [AMapServices sharedServices].apiKey = mapKey;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    application.applicationIconBadgeNumber=0;
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    application.applicationIconBadgeNumber=0;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    application.applicationIconBadgeNumber=0;
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
}



@end
