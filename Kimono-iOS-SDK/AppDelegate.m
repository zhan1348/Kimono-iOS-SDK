//
//  AppDelegate.m
//  Kimono-iOS-SDK
//
//  Created by yiqin on 8/17/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "AppDelegate.h"
#import "Kimono.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    NSString *yourAPIKey = @"lgro5HXUJL8loROwDQEuCrOULXJuvNlg";
    [Kimono setAPIKey:yourAPIKey];
    
    
    NSString *yourAPIId = @"7lmiinxs";
    KimonoOperation *operation = [KimonoOperation createWithAPIId:yourAPIId];
    
    [operation getDataCompletionBlockWithSuccess:^(KimonoObject *kimonoObject, NSDictionary *responseResults) {
        NSLog(@"Success - Get Data");
        
    } failure:^(NSError *error) {
        
    }];
    
    
    [operation retrieveAPICompletionBlockWithSuccess:^(KimonoObject *kimonoObject) {
        NSLog(@"Success - Retrieve API");
        
    } failure:^(NSError *error) {
        
    }];
    
    
    [operation listAllAPIsCompletionBlockWithSuccess:^(KimonoQuery *kimonoQuery) {
        NSLog(@"Success - List All API");
        
    } failure:^(NSError *error) {
        
    }];
    
    // Use Reddit as example.
    NSString *targeturl = @"http://www.mywebsite.com/products/3467721";
    
    [operation setTargeturl:targeturl success:^(KimonoObject *newKimonoObject) {
        NSLog(@"Success - Set Target URL");
        
    } failure:^(NSError *error) {
        
    }];
    
    
    [operation setFrequency:@"daily" success:^(KimonoObject *newKimonoObject) {
        NSLog(@"Success - Set Frequency");
        
    } failure:^(NSError *error) {
        
    }];
    
    /*
    [operation getDataFromTargeturl:targeturl success:^(KimonoObject *newKimonoObject, NSDictionary *responseResults) {
        NSLog(@"Success - Get Data from Targeturl");
        
    } failure:^(NSError *error) {
        
    }];
    */
    
     
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
