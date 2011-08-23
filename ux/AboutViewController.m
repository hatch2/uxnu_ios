//
//  AboutViewController.m
//  ux
//
//  Created by hatch2 on 11/08/06.
//  Copyright 2011 hatch2. All rights reserved.
//

#import "AboutViewController.h"

@implementation AboutViewController

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (IBAction)infoBTNA:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://ux.nu/"]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

@end
