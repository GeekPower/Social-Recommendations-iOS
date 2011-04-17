//
//  Brain.m
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DataController.h"


@implementation DataController

@synthesize recommendationCategories, dateSortingCriteria;

-(void) initValues {
    [recommendationCategories initWithCapacity:4];
    [recommendationCategories addObject:@"All"];
    [recommendationCategories addObject:@"Tech"];
    [recommendationCategories addObject:@"Outdoor"];
    [recommendationCategories addObject:@"Connect"];
    [recommendationCategories addObject:@"Fun"];
    [recommendationCategories addObject:@"Stupid"];
    [recommendationCategories addObject:@"Other"];
    [dateSortingCriteria initWithCapacity:3];
    [dateSortingCriteria addObject:@"Popularity"];
    [dateSortingCriteria addObject:@"24 hours"];
    [dateSortingCriteria addObject:@"7 days"];
}

@end
