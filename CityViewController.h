//
//  CityViewController.h
//  Weather
//
//  Created by Adam DesLauriers on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic, strong) City *city;


- (instancetype)initWithCity:(City *)city;


@end
