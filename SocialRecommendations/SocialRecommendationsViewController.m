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

@implementation SocialRecommendationsViewController

@synthesize recommendationTitles; 

@synthesize brain, dp;

- (DataController *)brain
{
	if (!brain) {
		brain = [[DataController alloc] init];
	}
	return brain;
}

-(IBAction) buttonPressed:(id)sender {
    NSLog(@"Filter button pressed here");
    //NSLog([NSString stringWithFormat:@"%d", dp]);
    //[self.dp setHidden:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 96;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.recommendationTitles count];
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
    cell.titleLabel.text = [[recommendationTitles objectAtIndex:indexPath.row] title];
    cell.descriptionLabel.text = [[recommendationTitles objectAtIndex:indexPath.row] description];
    
    return cell;
} 

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath {
    
   // NSLog([NSString stringWithFormat:@"%d", indexPath.row]);
  
}

- (void)dealloc
{
    [super dealloc];    [recommendationTitles release];

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
        anItem.description = @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
        [recommendationTitles addObject:anItem];
        [anItem release];

    }
    //NSLog([NSString stringWithFormat:@"%d", dp]);
    [dp retain];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.recommendationTitles = nil;
    [dp release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
