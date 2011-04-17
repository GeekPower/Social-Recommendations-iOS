//
//  Filter.h
//  SocialRecommendations
//
//  Created by svp on 17.04.2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataController.h"
//#import <DetailViewController.h>

@interface Filter : UIViewController
<UITableViewDelegate, UITableViewDataSource>  {
    NSMutableArray *listOfItems;
}

@end
