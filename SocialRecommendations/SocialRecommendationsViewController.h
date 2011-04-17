//
//  SocialRecommendationsViewController.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataController.h"

@interface SocialRecommendationsViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource> {

    DataController *brain;
    NSMutableArray *recommendationTitles;
    IBOutlet UIDatePicker *dp;
}

-(IBAction) buttonPressed:(id)sender;

@property (nonatomic, retain) NSMutableArray *recommendationTitles;
@property (nonatomic, retain) DataController *brain;
@property (nonatomic, retain) IBOutlet UIDatePicker *dp;

@end
