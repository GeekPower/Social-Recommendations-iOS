//
//  Brain.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Brain : NSObject {
    NSMutableArray *dateValues, *domainValues;
}
@property (nonatomic, retain) NSMutableArray *dateValues, *domainValues;

-(void)initValues;

@end
