//
//  AppDelegate.h
//  GPSAlarm
//
//  Created by Stephan Oeste on 02.12.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myPosition.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    myPosition *locationController;
}

@property (strong, nonatomic) UIWindow *window;

@end
