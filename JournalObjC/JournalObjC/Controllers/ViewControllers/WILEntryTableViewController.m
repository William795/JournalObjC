//
//  WILEntryTableViewController.m
//  JournalObjC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILEntryTableViewController.h"
#import "WILEntryViewController.h"
#import "WilEntryController.h"

@interface WILEntryTableViewController ()

@end

@implementation WILEntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return WILEntryController.shared.entry.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    WILEntry *entry = [[[WILEntryController shared] entry] objectAtIndex:indexPath.row];
    cell.textLabel.text = [entry title];
    
    return cell;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //identifier
    if ([[segue identifier] isEqualToString:@"entryEditSegue"]){
        //index
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        //Destination
        WILEntryViewController *destinationVC = [segue destinationViewController];
        //object to send
        WILEntry *entry = [[[WILEntryController shared] entry] objectAtIndex:indexPath.row];
        //send object
        destinationVC.entry = entry;
    }
}


@end
