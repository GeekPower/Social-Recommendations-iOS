//
//  DetailedRecomandation.m
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DetailedRecomandation.h"

@implementation DetailedRecomandation


@synthesize webView, linkLabel;

- (DataController *)dataController
{
	return [DataController instance]; 
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)viewDidDisappear:(BOOL)animated {
	NSLog(@"Release HTML view");
	[super didReceiveMemoryWarning]; 
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:[[[[self dataController] recommendedItems] objectAtIndex:[[self dataController]selectedItemIndex]]link]];
    //Load the request in the UIWebView.
    [webView loadRequest:requestObj];
    linkLabel.text = [[[[self dataController] recommendedItems ] objectAtIndex:[[self dataController] selectedItemIndex]] title];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
