//
//  SocialRecommendationsAppDelegate.m
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SocialRecommendationsAppDelegate.h"

#import "SocialRecommendationsViewController.h"

@implementation SocialRecommendationsAppDelegate


@synthesize window=_window;

@synthesize navigationController,filterButton, viewController;

- (SocialRecommendationsViewController *)viewController
{
	if (!viewController) {
		viewController = [[SocialRecommendationsViewController alloc] init];
	}
	return viewController;
}

-(IBAction)filterButtonPressed:(id)sender {
    NSLog(@"Filter button pressed");
   // NSLog([NSString stringWithFormat:@"%d",[[self viewController] dp]]);
    [filterButton setTitle:@"Done"];
    [[self viewController] buttonPressed:sender]; 
    
}
-(IBAction)cancelButtonPressed:(id)sender {
    NSLog(@"Filter button pressed");    
}

/*
- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	
    // Override point for customization after application launch
	[window addSubview:navigationController.view];
    [window makeKeyAndVisible];
}



- (void)dealloc {
    [window release];
	[navigationController release];
    [super dealloc];
}
*/
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
