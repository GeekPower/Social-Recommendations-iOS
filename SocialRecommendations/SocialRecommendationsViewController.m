//
//  SocialRecommendationsViewController.m
//  SocialRecommendations
//
//  Created by Luiza Cicone on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SocialRecommendationsViewController.h"
#import "RecommendedItem.h"
#import "CustomCell.h"
#import "DetailedRecomandation.h"

@implementation SocialRecommendationsViewController

@synthesize dp, detailsHandler;

- (DataController *)dataController
{
	return [DataController instance]; 
}

/*
- (DataController *)brain
{
	if (!brain) {
		brain = [[DataController alloc] init];
	}
	return brain;
}*/

-(IBAction) buttonPressed:(id)sender {
    NSLog(@"Filter button pressed here");

    //[self.dp setHidden:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 96;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[self dataController]recommendedItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"CustomCell";
    
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        NSArray *objects = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:nil options:nil];
        
        for (id currentObj in objects) {
            if ([currentObj isKindOfClass:[UITableViewCell class]]) {
                cell = (CustomCell *) currentObj;
                break;
            }
        }
        
    }
    cell.titleLabel.text = [[[[self dataController] recommendedItems] objectAtIndex:indexPath.row] title];
    cell.descriptionLabel.text = [[[[self dataController] recommendedItems] objectAtIndex:indexPath.row] description];
    
    return cell;
} 

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath {
   
    [[self dataController] setSelectedItemIndex:indexPath.row];
     //NSLog([NSString stringWithFormat:@"%d",[[self dataController]selectedItemIndex]]);
    [[self navigationController] pushViewController:detailsHandler animated:YES];
   // NSLog([NSString stringWithFormat:@"%d", detailsHandler]);
   // NSLog([NSString stringWithFormat:@"%d", indexPath.row]);
  
}

- (void)dealloc
{
    [super dealloc];    

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
    [[self dataController] initValues];
    //NSLog([NSString stringWithFormat:@"%d", dp]);
   // [dp retain];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    //[dp release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
