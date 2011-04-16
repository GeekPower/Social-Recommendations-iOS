//
//  SocialRecommendationsViewController.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Brain.h"

@interface SocialRecommendationsViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource> {

    Brain *brain;
    NSArray *colorNames;
}
@property (nonatomic, retain) NSArray *colorNames;
@property (nonatomic, retain) Brain *brain;

@end
