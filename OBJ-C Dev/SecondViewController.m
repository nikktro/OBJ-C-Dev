//
//  AnotherViewController.m
//  OBJ-C Dev
//
//  Created by Nikolay Trofimov on 11.11.2020.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"AnotherViewController";
    [self.view setBackgroundColor:[UIColor systemTealColor]];
    
    // Activity indicator
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyleLarge)];
    [indicator startAnimating];
    indicator.center = self.view.center;
    indicator.color = [UIColor systemRedColor];
    [self.view addSubview: indicator];
    
    // UI Slider
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 44.0)];
    slider.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    slider.tintColor = [UIColor systemRedColor];
    [self.view addSubview:slider];
    
    
}




@end
