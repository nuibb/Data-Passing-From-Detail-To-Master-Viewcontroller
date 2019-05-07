//
//  DelegateToPassDataInMaster.m
//  Meeting Mate
//
//  Created by nuibb on 8/18/15.
//  Copyright (c) 2015 mobioapp. All rights reserved.
//

#import "DelegateToPassDataInMaster.h"

@implementation DelegateToPassDataInMaster

-(void) getDataFromDelegateFunc:(NSString *)_id {
    [self.delegate getRowID:_id];
}

@end
