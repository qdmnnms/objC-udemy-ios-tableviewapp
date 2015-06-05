//
//  TableViewController.m
//  TableViewApp
//
//  Created by Peter Ng on 3/13/15.
//  Copyright (c) 2015 petercng. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorColor = [UIColor colorWithRed:0/255.0 green:181/255.0 blue:13/255.0 alpha:0.5];
    
    UIBarButtonItem *newButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    [[self navigationItem] setBackBarButtonItem:newButton];
    
   _Title = @[@"Great Wall",
              @"Hollywood",
              @"Empire State Building",
              @"Big Ben",
              @"Christ the Redeemer",
              @"CN Tower",
              @"Eiffel Tower",
              @"Taj Mahal",
              @"Stonehenge",];
    
    _Description = @[@"China",
               @"Hollywood",
               @"NYC",
               @"London, England",
               @"Rio",
               @"Toronto",
               @"Paris, France",
               @"India",
               @"Salsbury Plain, England",];
    
    _Images = @[@"greatwall.jpeg",
               @"hollywood.jpeg",
               @"esb.jpeg",
               @"bigben.jpeg",
               @"christ.jpeg",
               @"cn.jpeg",
               @"eiffel.jpeg",
               @"taj.jpeg",
               @"stonehenge.jpeg",];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _Title.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"TableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    int row = [indexPath row];
    
    cell.TitleLabel.text = _Title[row];
    cell.DescriptionLabel.text = _Description[row];
    cell.ThumbImage.image = [UIImage imageNamed:_Images[row]];
    
    return cell;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ShowDetails"]) {
        DetailViewController *detailView = [segue destinationViewController];
        
        NSIndexPath *myindexpath = [self.tableView indexPathForSelectedRow];
        
        int row = [myindexpath row];
        detailView.DetailModal = @[_Title[row], _Description[row], _Images[row]];
    }
    
    
}

@end
