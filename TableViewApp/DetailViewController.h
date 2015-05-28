//
//  DetailViewController.h
//  TableViewApp
//
//  Created by Peter Ng on 3/14/15.
//  Copyright (c) 2015 petercng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    
    IBOutlet UILabel *Built;
    IBOutlet UILabel *Height;
    IBOutlet UILabel *Type;
    IBOutlet UILabel *Visitation;
    
}

@property (strong, nonatomic) IBOutlet UIImageView *ImageView;
@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *DescriptionLabel;

@property (strong, nonatomic) NSArray *DetailModal;


@end
