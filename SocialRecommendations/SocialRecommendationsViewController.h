//
//  SocialRecommendationsViewController.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Brain.h"

@interface SocialRecommendationsViewController : UIViewController {
    Brain *brain;
    IBOutlet UIPickerView *datePicker, *domainPicker;
    NSMutableArray *array;
}

@property (nonatomic, retain) UIPickerView *datePicker, *domainPicker;
@property (nonatomic, retain) Brain *brain;

@end
