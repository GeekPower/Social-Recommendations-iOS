//
//  SocialRecommendationsAppDelegate.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialRecommendationsViewController.h"
@class SocialRecommendationsViewController;

@interface SocialRecommendationsAppDelegate : NSObject <UIApplicationDelegate> {

    UINavigationController *navigationController;
    IBOutlet UIBarButtonItem *filterButton, *cancelButton;
    SocialRecommendationsViewController *viewController;
}

-(IBAction)filterButtonPressed:(id)sender;
-(IBAction)cancelButtonPressed:(id)sender;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *filterButton;
@property (nonatomic, retain) SocialRecommendationsViewController *viewController;


@end
