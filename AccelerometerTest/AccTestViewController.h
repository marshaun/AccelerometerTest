//
//  AccTestViewController.h
//  AccelerometerTest
//
//  Created by SHAUN MARTIN on 3/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccTestViewController : UIViewController <UIAccelerometerDelegate> {

    IBOutlet UILabel* myXLabel;
    IBOutlet UILabel* myYLabel;
    IBOutlet UILabel* myZLabel;
    
    __weak IBOutlet UIProgressView *myXProgress;
    __weak IBOutlet UIProgressView *myYProgress;
    __weak IBOutlet UIProgressView *myZProgress;
    
}
@end
