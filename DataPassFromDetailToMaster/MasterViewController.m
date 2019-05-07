//
//  MasterViewController.m
//  DataPassFromDetailToMaster
//
//  Created by nuibb on 8/18/15.
//  Copyright (c) 2015 nuibb. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property (strong, nonatomic) DelegateToPassDataInMaster *delegateController;
@property (strong, nonatomic) NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    self.clearsSelectionOnViewWillAppear = NO;
    self.preferredContentSize = CGSizeMake(320.0, 600.0);
}

- (void) getRowID:(NSString *)_id {
    NSLog(@"Row ID : %@", _id);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegateController.delegate = self;
    
    self.objects = [[NSMutableArray alloc] initWithObjects:@"One",@"Two",@"Three", nil];
    // Do any additional setup after loading the view, typically from a nib.
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *str = self.objects[indexPath.row];
    cell.textLabel.text = str;
    return cell;
}

@end
