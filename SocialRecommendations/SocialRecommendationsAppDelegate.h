//
//  SocialRecommendationsAppDelegate.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SocialRecommendationsViewController;

@interface SocialRecommendationsAppDelegate : NSObject <UIApplicationDelegate> {

    	UINavigationController *navigationController;
        IBOutlet UIButton *filterButton;
}


@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;



@end
