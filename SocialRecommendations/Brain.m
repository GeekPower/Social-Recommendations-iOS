//
//  Brain.m
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Brain.h"


@implementation Brain

@synthesize domainValues, dateValues;

-(void) initValues {
    [domainValues initWithCapacity:4];
    [domainValues addObject:@"All"];
    [domainValues addObject:@"Tech"];
    [domainValues addObject:@"Outdoor"];
    [domainValues addObject:@"Connect"];
    [domainValues addObject:@"Fun"];
    [domainValues addObject:@"Stupid"];
    [domainValues addObject:@"Other"];
    [domainValues initWithCapacity:3];
    [domainValues addObject:@"Popularity"];
    [domainValues addObject:@"24 hours"];
    [domainValues addObject:@"7 days"];
}

@end
