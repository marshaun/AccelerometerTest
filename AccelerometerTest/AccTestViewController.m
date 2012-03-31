//
//  AccTestViewController.m
//  AccelerometerTest
//
//  Created by SHAUN MARTIN on 3/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AccTestViewController.h"

@interface AccTestViewController ()

@end
@implementation AccTestViewController

-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
	
    myXLabel.text = [NSString stringWithFormat:@"%f", acceleration.x];
    myYLabel.text = [NSString stringWithFormat:@"%f", acceleration.y];
    myZLabel.text = [NSString stringWithFormat:@"%f", acceleration.z];
    
    myXProgress.progress = (acceleration.x + 1) / 2;
    myYProgress.progress = (acceleration.y + 1) / 2;
    myZProgress.progress = (acceleration.z + 1) / 2;
    
}

- (void)viewDidLoad
{
    [[UIAccelerometer sharedAccelerometer] setUpdateInterval:1.0/30.0];
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    myXProgress = nil;
    myYProgress = nil;
    myZProgress = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
