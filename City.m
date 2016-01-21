//
//  City.m
//  Weather
//
//  Created by Adam DesLauriers on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithCityName:(NSString *)cityName currentWeather:(NSString *)currentWeather chanceOfPrecipitation:(NSString *)chanceOfPrecipitation andCurrentTime:(NSString *)currentTime andImage:(UIImage *)image andWeatherFacts:(NSString *)weatherFacts{
    
    self = [super init];
    if (self) {
        _cityName = cityName;
        _currentWeather = currentWeather;
        _chanceOfPrecipitation = chanceOfPrecipitation;
        _currentTime = currentTime;
        _image = image;
        _weatherFacts = weatherFacts;
        
    }
    return self;
}


@end
