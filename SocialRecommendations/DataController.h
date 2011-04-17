//
//  Brain.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DataController : NSObject {
    NSMutableArray *dateSortingCriteria, *recommendationCategories;
    NSMutableArray *recommendedItems;
    int selectedItemIndex;
}
@property (nonatomic, retain) NSMutableArray *dateSortingCriteria, *recommendationCategories, *recommendedItems;

+(id)instance;
-(void)setSelectedItemIndex:(int)index;
-(int)selectedItemIndex;
-(void)initValues;

@end
