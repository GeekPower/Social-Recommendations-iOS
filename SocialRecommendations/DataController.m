//
//  Brain.m
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DataController.h"
#import "RecommendedItem.h"

static DataController *dataController = nil;

@implementation DataController

+ (id)instance
{
	if (dataController == nil) dataController = [[DataController alloc] init];
	return dataController;
}

@synthesize recommendationCategories, dateSortingCriteria, recommendedItems;

-(void)setSelectedItemIndex:(int) index{
    selectedItemIndex = index;
}
-(int)selectedItemIndex{
    return selectedItemIndex;
}

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
    self.recommendedItems = [[NSMutableArray alloc] initWithCapacity:7];
    for (int i=0; i<7; i++) {
        RecommendedItem *anItem = [[RecommendedItem alloc] init];
        anItem.title = [NSString stringWithFormat: @"Activity %d", i+1];
        anItem.description = @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
        anItem.link =[NSURL URLWithString:[NSString stringWithFormat: @"http://google.com%d",i]];
        [recommendedItems addObject:anItem];
        [anItem release];
       // NSLog([[recommendedItems objectAtIndex:i] title]);
    }
    

}

@end
