//
//  SocialRecommendationsViewController.m
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SocialRecommendationsViewController.h"
#import "RecommendedItem.h"

@implementation SocialRecommendationsViewController

@synthesize recommendationTitles; 

@synthesize brain;

- (Brain *)brain
{
	if (!brain) {
		brain = [[Brain alloc] init];
	}
	return brain;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.recommendationTitles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell.
    NSLog([NSString stringWithFormat:@"%d", [indexPath row]]);
    NSString *colorString = [[self.recommendationTitles objectAtIndex: [indexPath row]] title];
    
    cell.textLabel.text = colorString;
    
    NSString *subtitle = [[self.recommendationTitles objectAtIndex: [indexPath row]] description];
    
    cell.detailTextLabel.text = subtitle;
    
    return cell;
} 

- (void)dealloc
{
    [super dealloc];
    [recommendationTitles release];

}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.recommendationTitles = [[NSMutableArray alloc] initWithCapacity:5];
    for (int i=0; i<5; i++) {
        RecommendedItem *anItem = [[RecommendedItem alloc] init];
        anItem.title = [NSString stringWithFormat: @"Activity %d", i+1];
        anItem.description = @"some description for this activity";
        [recommendationTitles addObject:anItem];
        [anItem release];

    }
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.recommendationTitles = nil;

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
