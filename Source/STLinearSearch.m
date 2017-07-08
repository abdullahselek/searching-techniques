//
//  STLinearSearch.m
//  searching-techniques
//
//  Created by Abdullah Selek on 02/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "STLinearSearch.h"

@interface STLinearSearch ()

@property (nonatomic, readonly) NSArray *dataSet;

@end

@implementation STLinearSearch

- (instancetype)initWithDataSet:(NSArray *)dataSet {
    if (self == [super init]) {
        _dataSet = dataSet;
    }
    return self;
}

- (int)search:(id)object {
    if (!self.dataSet) {
        return 0;
    }
    for (int i = 0; i < [self.dataSet count]; i++) {
        id obj = self.dataSet[i];
        if (obj == object) {
            return i;
        } else if ([obj isEqual:object]) {
            return i;
        } else if ([object isKindOfClass:[NSString class]] && [obj isEqualToString:object]) {
            return i;
        }
    }
    return 0;
}

@end
