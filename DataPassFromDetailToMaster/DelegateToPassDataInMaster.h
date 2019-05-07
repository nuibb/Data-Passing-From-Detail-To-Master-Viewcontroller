//
//  DelegateToPassDataInMaster.h
//  Meeting Mate
//
//  Created by nuibb on 8/18/15.
//  Copyright (c) 2015 mobioapp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DelegateForPassDataToMasterView;

@interface DelegateToPassDataInMaster : NSObject

@property (nonatomic, weak) IBOutlet id <DelegateForPassDataToMasterView> delegate;
-(void) getDataFromDelegateFunc:(NSString *)_id;

@end

#pragma mark -

@protocol DelegateForPassDataToMasterView <NSObject>

@optional
- (void)getRowID:(NSString *)_id;

@end
