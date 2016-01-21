//
//  DetailedViewController.m
//  Weather
//
//  Created by Adam DesLauriers on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "CityViewController.h"
#import "City.h"

@interface DetailedViewController ()




@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   // DetailedViewController;
    

    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    UILabel *weatherFacts = [[UILabel alloc] initWithFrame:CGRectZero];
    weatherFacts.translatesAutoresizingMaskIntoConstraints = NO;
    weatherFacts.text = self.city.weatherFacts;
    weatherFacts.numberOfLines = 0;
    [self.view addSubview:weatherFacts];
    
    NSLayoutConstraint *weatherFactsX = [NSLayoutConstraint constraintWithItem:weatherFacts attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    [self.view addConstraint:weatherFactsX];
    
    NSLayoutConstraint *weatherFactsY = [NSLayoutConstraint constraintWithItem:weatherFacts attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    [self.view addConstraint:weatherFactsY];
    
    
    NSLayoutConstraint *weatherFactsHeight = [NSLayoutConstraint constraintWithItem:weatherFacts attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0];
    [self.view addConstraint:weatherFactsHeight];
    
    NSLayoutConstraint *weatherFactsWidth = [NSLayoutConstraint constraintWithItem:weatherFacts attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.9 constant:0];
    [self.view addConstraint:weatherFactsWidth];
    
    
    
    
}
-(void)viewDidAppear:(BOOL)animated
{
//    [super viewDidAppear: NO];
//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    
//    
//    UILabel *weatherFacts = [[UILabel alloc] initWithFrame:CGRectZero];
//    weatherFacts.translatesAutoresizingMaskIntoConstraints = NO;
//    weatherFacts.text = self.city.weatherFacts;
//    weatherFacts.numberOfLines = 0;
//    [self.view addSubview:weatherFacts];
//    
//    NSLayoutConstraint *weatherFactsX = [NSLayoutConstraint constraintWithItem:weatherFacts attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
//    [self.view addConstraint:weatherFactsX];
//    
//    NSLayoutConstraint *weatherFactsY = [NSLayoutConstraint constraintWithItem:weatherFacts attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
//    [self.view addConstraint:weatherFactsY];
    
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
