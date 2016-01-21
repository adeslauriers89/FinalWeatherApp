//
//  DetailedViewController.h
//  Weather
//
//  Created by Adam DesLauriers on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"


@interface DetailedViewController : UIViewController

//@property (nonatomic, strong) NSString *hourlyForecast;
//@property (nonatomic, strong) NSString *threeDayForecast;
//@property (nonatomic, strong) NSString *recordHighsAndLows;
@property (nonatomic) City *city;


@end
