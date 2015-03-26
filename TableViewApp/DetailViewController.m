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

    _TitleLabel = _DetailModal[0];
    _DescriptionLabel = _DetailModal[1];
    _ImageView.image = [UIImage imageNamed:_DetailModal[2]];
    
    self.navigationItem.title = _DetailModal[0];
    
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
