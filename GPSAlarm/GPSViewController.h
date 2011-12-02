//
//  GPSViewController.h
//  GPSAlarm
//
//  Created by Stephan Oeste on 02.12.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myPosition.h"

@interface GPSViewController : UIViewController  <myPositionDelegate> {
    IBOutlet UILabel *locationText;
    myPosition *locationController;
}


@property (weak, nonatomic) IBOutlet UITextField *GPSlocationText;

- (void)locationUpdate:(CLLocation *)location;
- (void)locationError:(NSError *)error;

@end
