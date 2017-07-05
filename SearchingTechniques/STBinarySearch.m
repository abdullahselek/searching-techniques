//
//  STBinarySearch.m
//  SearchingTechniques
//
//  Created by Abdullah Selek on 05/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "STBinarySearch.h"

@interface STBinarySearch ()

@property (nonatomic) NSArray *dataSet;

@end

@implementation STBinarySearch

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

- (int)search:(id)object {
    NSUInteger high = [self.dataSet count];
    int low = 1;
    while (true) {
        if (high < low) {
            return 0;
        }

        int mid = low + ((int) high - low) / 2;
        if (self.dataSet[mid] < object) {
            low = mid + 1;
        }
        if (self.dataSet[mid] > object) {
            high = mid - 1;
        }
        if (self.dataSet[mid] == object) {
            return mid;
        }
    }
    return 0;
}

@end
