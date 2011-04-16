//
//  RecommendedItem.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface RecommendedItem : NSObject {
    NSString *title, *description;
}
    
@property (nonatomic, retain) NSString *title, *description;


@end
