//
//  GPSViewController.m
//  GPSAlarm
//
//  Created by Stephan Oeste on 02.12.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "GPSViewController.h"

@implementation GPSViewController
@synthesize GPSlocationText;


- (void)locationUpdate:(CLLocation *)location {
    GPSlocationText.text = [location description];
}

- (void)locationError:(NSError *)error {
    GPSlocationText.text = [error description];
}




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    GPSlocationText.text = @"test";
    locationController = [[myPosition alloc] init];
    locationController.delegate = self;
    [locationController.locationManager startUpdatingLocation];
}


- (void)viewDidUnload
{
    
    [self setGPSlocationText:nil];
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
