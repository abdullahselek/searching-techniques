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

- (id)search:(id)object {
    return nil;
}

@end
