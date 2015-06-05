//
//  DetailViewController.m
//  TableViewApp
//
//  Created by Peter Ng on 3/14/15.
//  Copyright (c) 2015 petercng. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _TitleLabel.text = _DetailModal[0];
    _DescriptionLabel.text = _DetailModal[1];
    _ImageView.image = [UIImage imageNamed:_DetailModal[2]];
    
    self.navigationItem.title = _DetailModal[0];
    
    if ([_TitleLabel.text isEqualToString:@"Big Ben"]) {
        Built.text = @"Built: 1859";
        Height.text = @"Height: 96m";
        Type.text = @"Type: Cultural";
        Visitation.text = @"Visitation: 20 millions per year";
    }
    if ([_TitleLabel.text isEqualToString:@"Great Wall"]) {
        Built.text = @"Built: 206 BC";
        Height.text = @"Height: 5 to 8m";
        Type.text = @"Type: Cultural";
        Visitation.text = @"Visitation: 10 millions per year";
    }
    if ([_TitleLabel.text isEqualToString:@"Hollywood"]) {
        Built.text = @"Built: 1900";
        Height.text = @"Height: 96m?";
        Type.text = @"Type: Cultural";
        Visitation.text = @"Visitation: 5 millions per year";
    }
    if ([_TitleLabel.text isEqualToString:@"Empire State Building"]) {
        Built.text = @"Built: 1920?";
        Height.text = @"Height: 100m?";
        Type.text = @"Type: Cultural";
        Visitation.text = @"Visitation: 30 millions per year";
    }

    
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
