//
//  WILEntryViewController.m
//  JournalObjC
//
//  Created by William Moody on 5/20/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILEntryViewController.h"
#import "WILEntryTableViewController.h"
#import "WiLEntryController.h"

@interface WILEntryViewController ()

@property (weak, nonatomic) IBOutlet UINavigationItem *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextLabel;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation WILEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WILEntry *entry = self.entry;
    self.titleTextLabel.text = entry.title;
    self.bodyTextView.text = entry.body;
    
}
- (IBAction)saveButtonTapped:(id)sender {
    [[WILEntryController shared] createEntryWithName:self.titleTextLabel.text body:self.bodyTextView.text];
    self.bodyTextView.text = @"";
    self.titleTextLabel.text = @"";
}

- (IBAction)clearButtonTapped:(id)sender {
    self.bodyTextView.text = @"";
    self.titleTextLabel.text = @"";
}



@end
