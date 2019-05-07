//
//  DetailViewController.h
//  DataPassFromDetailToMaster
//
//  Created by nuibb on 8/18/15.
//  Copyright (c) 2015 nuibb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

