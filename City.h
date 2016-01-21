//
//  City.h
//  Weather
//
//  Created by Adam DesLauriers on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, strong) NSString *cityName;
@property (nonatomic, strong) NSString *currentWeather;
@property (nonatomic, strong) NSString *chanceOfPrecipitation;
@property (nonatomic, strong) NSString *currentTime;
@property (nonatomic, strong) UIImage *image;

@property (nonatomic, strong) NSString *weatherFacts;



- (instancetype)initWithCityName:(NSString *)cityName currentWeather:(NSString *)currentWeather chanceOfPrecipitation:(NSString *)chanceOfPrecipitation andCurrentTime:(NSString *)currentTime andImage:(UIImage*)image andWeatherFacts:(NSString *)weatherFacts;


@end
