//
//  SocialRecommendationsViewController.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataController.h"
@class DetailedRecomandation;

@interface SocialRecommendationsViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource> {

    IBOutlet UIDatePicker *dp;
    IBOutlet DetailedRecomandation *detailsHandler;
}

-(IBAction) buttonPressed:(id)sender;

@property (nonatomic, retain) IBOutlet UIDatePicker *dp;
@property (nonatomic, retain) IBOutlet DetailedRecomandation *detailsHandler;


@end
