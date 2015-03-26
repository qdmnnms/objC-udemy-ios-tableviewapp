//
//  DetailViewController.h
//  TableViewApp
//
//  Created by Peter Ng on 3/14/15.
//  Copyright (c) 2015 petercng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *ImageView;
@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *DescriptionLabel;

@property (strong, nonatomic) NSArray *DetailModal;


@end
