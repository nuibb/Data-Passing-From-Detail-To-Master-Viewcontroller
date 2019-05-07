//
//  MasterViewController.h
//  DataPassFromDetailToMaster
//
//  Created by nuibb on 8/18/15.
//  Copyright (c) 2015 nuibb. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

#import "DelegateToPassDataInMaster.h"

@interface MasterViewController : UITableViewController<DelegateForPassDataToMasterView>

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

