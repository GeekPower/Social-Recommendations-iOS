//
//  DetailedRecomandation.h
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataController.h"


@interface DetailedRecomandation : UIViewController {
    IBOutlet UIWebView *webView;
    IBOutlet UILabel *linkLabel;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UILabel *linkLabel;


@end
