//
//  CustomCell.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomCell : UITableViewCell {
    IBOutlet UILabel *titleLabel, *descriptionLabel;
}
@property (nonatomic, retain) IBOutlet UILabel *titleLabel, *descriptionLabel;

@end
