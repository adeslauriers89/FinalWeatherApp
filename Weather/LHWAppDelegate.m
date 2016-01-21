//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    self.window.rootViewController = tabBarController;
    
    
    City *vancouver = [[City alloc]initWithCityName:@"Vancouver" currentWeather:@"8 degrees C, light rain , 5km/hr winds" chanceOfPrecipitation:@"POP: 80%" andCurrentTime:@"Current Time: 11:30am" andImage:[UIImage imageNamed:@"rain.png"] andWeatherFacts:@"Warmed by Pacific Ocean currents and protected by a range of mountains, Vancouver's weather is mild year-round. From high 70's Fahrenheit (low 20's Celsius) in summer to a mild mid 40's Fahrenheit (0º to 5º Celsius) in winter, the climate is always hospitable. Our winters are wet, but it rarely snows, except on our local ski hills."];
    
    City *hongKong = [[City alloc] initWithCityName:@"Hong Kong" currentWeather:@"16 degrees C, mainly clear, 30km/hr winds" chanceOfPrecipitation:@"POP: 30%" andCurrentTime:@"Current Time: 11:30pm" andImage:[UIImage imageNamed:@"clear-night.png"] andWeatherFacts:@"Hong Kong has four seasons: a comfortable to pleasant and dry winter, an unstable and wet spring, a hot and humid summer, and a warm and moderately dry autumn. Hong Kong is affected by both cool northeast monsoons and warm maritime airstreams. Most of the rainfall occurs from May to September, which is the rainy season."];
    
    City *hamburg = [[City alloc] initWithCityName:@"Hamburg" currentWeather:@"-2 degrees C, light snow, 10km/hr winds" chanceOfPrecipitation:@"POP: 20%" andCurrentTime:@"Current Time: 8:30pm" andImage:[UIImage imageNamed:@"snow.png"] andWeatherFacts:@"Winters can be severe with cutting winds and freezing temperatures. Summers are warm and pleasant. Rainshowers are frequent but do not last too long: the sunshine index is high, whilst the amount of rainfall guarantees a green and fertile landscape."];
    
    City *cancun = [[City alloc] initWithCityName:@"Cancun" currentWeather:@"26 degrees C, windy , 60km/hr winds" chanceOfPrecipitation:@"POP: 10%" andCurrentTime:@"Current Time: 2:30pm" andImage:[UIImage imageNamed:@"wind.png"] andWeatherFacts:@"Cancun weather is fantastic year-round.  High temperatures average in the high 80s, while lows are only in the 70s.  The rainy season runs from May through October, while the dry season is November through April.  May and June are the most sweltering months, with high humidity, rainfall and temperatures, while the winter months are generally pleasant."];
    
    City *newYork = [[City alloc] initWithCityName:@"New York" currentWeather:@"3 degrees C, partly cloudy, 15km/hr winds" chanceOfPrecipitation:@"POP: 30%" andCurrentTime:@"Current Time: 2:30pm" andImage:[UIImage imageNamed:@"partly-cloudy.png"]andWeatherFacts:@"New York weather is very changeable with moderate precipitation all over the year, some heat waves in summer and very cool weather in winter and even in the early spring. Snow is concentrated in winter months. Humidity and high temperatures may turn July and August into very uncomfortable months."];
   
    
    UINavigationController *vancouverNavController = [self setNavControllerForCity:vancouver];
    
    UINavigationController *hongKongNavController = [self setNavControllerForCity:hongKong];
    
    UINavigationController *hamburgNavController = [self setNavControllerForCity:hamburg];
    
    UINavigationController *cancunNavController = [self setNavControllerForCity:cancun];

    UINavigationController *newYorkNavController = [self setNavControllerForCity:newYork];
    
    [tabBarController setViewControllers: @[ vancouverNavController, hongKongNavController, hamburgNavController, cancunNavController ,newYorkNavController ]];
    

    [self.window makeKeyAndVisible];
    return YES;
}




-(UINavigationController*)setNavControllerForCity:(City*)city {
    
    CityViewController *cityViewController = [[CityViewController alloc] initWithCity:city];
    [cityViewController setTitle:city.cityName];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:cityViewController];
    
    return navController;
}



@end







//
//    CityViewController *cancunViewController = [[CityViewController alloc] initWithCity:cancun];
//    [cancunViewController setTitle:cancun.cityName];
//    UINavigationController *cancunNavController = [[UINavigationController alloc] initWithRootViewController: cancunViewController];

//    CityViewController *newYorkViewController = [[CityViewController alloc] initWithCity:newYork];
//    UINavigationController *newYorkNavController = [[UINavigationController alloc] initWithRootViewController: newYorkViewController];
//    [newYorkViewController setTitle:newYork.cityName];
//
//CityViewController *vancouverViewController = [[CityViewController alloc] initWithCity:vancouver];
//[vancouverViewController setTitle:vancouver.cityName];
//UINavigationController *vancouverNavController = [[UINavigationController alloc] initWithRootViewController: vancouverViewController];
//
//CityViewController *hongKongViewController = [[CityViewController alloc] initWithCity:hongKong];
//[hongKongViewController setTitle:hongKong.cityName];
//UINavigationController *hongKongNavController = [[UINavigationController alloc] initWithRootViewController: hongKongViewController];
//
//CityViewController *hamburgViewController = [[CityViewController alloc] initWithCity:hamburg];
//[hamburgViewController setTitle:hamburg.cityName];
//UINavigationController *hamburgNavController = [[UINavigationController alloc] initWithRootViewController: hamburgViewController];