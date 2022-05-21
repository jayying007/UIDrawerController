//
//  AppDelegate.m
//  UIDrawerControllerDemo
//
//  Created by janezhuang on 2022/5/21.
//

#import "AppDelegate.h"
#import "UIDrawerController.h"
#import "ViewController.h"
#import "ListViewController.h"

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
    UIDrawerController *drawerController = [[UIDrawerController alloc] initWithRootViewController:navController];
    drawerController.leftViewController = [[ListViewController alloc] init];
    self.window.rootViewController = drawerController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}
@end
