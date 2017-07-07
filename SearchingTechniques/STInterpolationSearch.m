//
//  STInterpolationSearch.m
//  SearchingTechniques
//
//  Created by Abdullah Selek on 07/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "STInterpolationSearch.h"

@interface STInterpolationSearch ()

@property (nonatomic) NSArray *dataSet;

@end

@implementation STInterpolationSearch

- (instancetype)initWithDataSet:(NSArray *)dataSet {
    if (self == [super init]) {
        self.dataSet = dataSet;
    }
    return self;
}

- (void)sortDataSet {
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    self.dataSet = [self.dataSet sortedArrayUsingDescriptors:@[sortDescriptor]];
}

- (int)search:(int)x {
    [self sortDataSet];

    int low = 0;
    int mid = -1;
    int high = (int) ([self.dataSet count] > 0 ? [self.dataSet count] - 1 : 0);

    while (true) {
        if ((low == high) || (self.dataSet[low] == self.dataSet[high])) {
            return 0;
        }
        mid = low + ((high - low) / ([self.dataSet[high] intValue] - [self.dataSet[low] intValue])) *
            (x - [self.dataSet[low] intValue]);
        if (mid < 0) {
            return 0;
        }
        if ([self.dataSet[mid] intValue] == x) {
            return (int) mid;
        } else {
            if ([self.dataSet[mid] intValue] < x) {
                low = mid + 1;
            } else if ([self.dataSet[mid] intValue] > x) {
                high = mid - 1;
            }
        }
    }
}

@end
