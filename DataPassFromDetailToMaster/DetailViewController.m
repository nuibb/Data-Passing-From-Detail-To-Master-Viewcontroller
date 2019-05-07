//
//  DetailViewController.m
//  DataPassFromDetailToMaster
//
//  Created by nuibb on 8/18/15.
//  Copyright (c) 2015 nuibb. All rights reserved.
//

#import "DetailViewController.h"
#import "DelegateToPassDataInMaster.h"
#import "MasterViewController.h"

@interface DetailViewController ()

@property (strong, nonatomic) DelegateToPassDataInMaster *delegateController;
@property (strong, nonatomic) NSMutableArray *objects;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.delegateController =  (MasterViewController *)self.splitViewController.viewControllers[1];
    
    self.objects = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *str = self.objects[indexPath.row];
    NSLog(@"%@", str);
    [self.delegateController getDataFromDelegateFunc:str];
}



@end
