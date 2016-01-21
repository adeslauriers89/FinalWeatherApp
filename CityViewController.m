//
//  CityViewController.m
//  Weather
//
//  Created by Adam DesLauriers on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"
#import "City.h"

@interface CityViewController ()

@property (nonatomic, weak) UILabel *currentWeatherLabel;
@property (nonatomic, weak) UIImageView *weatherPic;
@property (nonatomic, weak) UIButton *showMoreDetailsButton;

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // current weather label
    
    UILabel *currentWeatherLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    currentWeatherLabel.translatesAutoresizingMaskIntoConstraints = NO;
    currentWeatherLabel.text = self.city.currentWeather;
    currentWeatherLabel.numberOfLines = 0;
    [self.view addSubview:currentWeatherLabel];
    
    NSLayoutConstraint *currentWeatherLabelTopMargin = [NSLayoutConstraint constraintWithItem:currentWeatherLabel attribute:NSLayoutAttributeTop relatedBy: NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:70];
    [self.view addConstraint:currentWeatherLabelTopMargin];
    
    NSLayoutConstraint *currentWeatherLabelLeftMargin = [NSLayoutConstraint constraintWithItem:currentWeatherLabel attribute:NSLayoutAttributeLeft relatedBy: NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:25];
    [self.view addConstraint:currentWeatherLabelLeftMargin];
    
    NSLayoutConstraint *currentWeatherLabelWidth = [NSLayoutConstraint constraintWithItem:currentWeatherLabel attribute:NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.9 constant:0];
    [self.view addConstraint:currentWeatherLabelWidth];
    
    NSLayoutConstraint *currentWeatherLabelHeight = [NSLayoutConstraint constraintWithItem:currentWeatherLabel attribute:NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:30];
    [self.view addConstraint:currentWeatherLabelHeight];
    
    // chance of precip view
    
    UILabel *chanceOfPrecipitation = [[UILabel alloc] initWithFrame:CGRectZero];
    chanceOfPrecipitation.translatesAutoresizingMaskIntoConstraints = NO;
    chanceOfPrecipitation.text = self.city.chanceOfPrecipitation;
    chanceOfPrecipitation.numberOfLines = 0;
    [self.view addSubview:chanceOfPrecipitation];
    
    NSLayoutConstraint *chanceOfPrecipLabelTopMargin = [NSLayoutConstraint constraintWithItem:chanceOfPrecipitation attribute:NSLayoutAttributeTopMargin relatedBy: NSLayoutRelationEqual toItem:currentWeatherLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:20];
    [self.view addConstraint:chanceOfPrecipLabelTopMargin];
    
    NSLayoutConstraint *chanceOfPrecipLabelLeftMargin = [NSLayoutConstraint constraintWithItem:chanceOfPrecipitation attribute:NSLayoutAttributeLeft relatedBy: NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:25];
    [self.view addConstraint:chanceOfPrecipLabelLeftMargin];
    
    NSLayoutConstraint *chanceOfPrecipLabelWidth = [NSLayoutConstraint constraintWithItem:chanceOfPrecipitation attribute:NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.9 constant:0];
    [self.view addConstraint:chanceOfPrecipLabelWidth];
    
    NSLayoutConstraint *chanceOfPrecipLabelHeight = [NSLayoutConstraint constraintWithItem:chanceOfPrecipitation attribute:NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:30];
    [self.view addConstraint:chanceOfPrecipLabelHeight];
    
    // current Time label
    
    UILabel *currentTime = [[UILabel alloc] initWithFrame:CGRectZero];
    currentTime.translatesAutoresizingMaskIntoConstraints = NO;
    currentTime.text = self.city.currentTime;
    currentTime.numberOfLines = 0;
    [self.view addSubview:currentTime];
    
    NSLayoutConstraint *currentTimeLabelTopMargin = [NSLayoutConstraint constraintWithItem:currentTime attribute:NSLayoutAttributeTopMargin relatedBy: NSLayoutRelationEqual toItem:chanceOfPrecipitation attribute:NSLayoutAttributeBottom multiplier:1 constant:20];
    [self.view addConstraint:currentTimeLabelTopMargin];
    
    NSLayoutConstraint *currentTimeLabelLeftMargin = [NSLayoutConstraint constraintWithItem:currentTime attribute:NSLayoutAttributeLeft relatedBy: NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:25];
    [self.view addConstraint:currentTimeLabelLeftMargin];
    
    NSLayoutConstraint *currentTimeLabelWidth = [NSLayoutConstraint constraintWithItem:currentTime attribute:NSLayoutAttributeWidth relatedBy: NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.9 constant:0];
    [self.view addConstraint:currentTimeLabelWidth];
    
    NSLayoutConstraint *currentTimeLabellHeight = [NSLayoutConstraint constraintWithItem:currentTime attribute:NSLayoutAttributeHeight relatedBy: NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:150];
    [self.view addConstraint:currentTimeLabellHeight];
    
    
    
    
    // weather picture view
    
    UIImageView *weatherPic = [[UIImageView alloc] initWithFrame:CGRectZero];
    weatherPic.translatesAutoresizingMaskIntoConstraints =NO;
    weatherPic.backgroundColor = [UIColor blackColor];
    weatherPic.image = self.city.image;
    [self.view addSubview:weatherPic];
    
    NSLayoutConstraint *weatherPicY = [NSLayoutConstraint constraintWithItem:weatherPic attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    [self.view addConstraint:weatherPicY];
    
    NSLayoutConstraint *weatherPicX = [NSLayoutConstraint constraintWithItem:weatherPic attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    [self.view addConstraint:weatherPicX];
    
    // show more details button
    
    UIButton *showMoreDetailsButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [showMoreDetailsButton setTitle:@"More info!" forState:UIControlStateNormal];
    [showMoreDetailsButton addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showMoreDetailsButton];
    showMoreDetailsButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *moreDetailsButtonX = [NSLayoutConstraint constraintWithItem:showMoreDetailsButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    [self.view addConstraint:moreDetailsButtonX];
    
    NSLayoutConstraint *moreDetailsButtonBottom = [NSLayoutConstraint constraintWithItem:showMoreDetailsButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:-50];
    [self.view addConstraint:moreDetailsButtonBottom];
    
    
    
    
                                       
                                       

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

-(void)showWeatherDetails{
    
    DetailedViewController *detailedViewController = [[DetailedViewController alloc] init];
    
    [self.navigationController pushViewController:detailedViewController animated:NO];
    
    detailedViewController.city = self.city;
    
}


@end

