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

- (id)search:(id)object {
    if (!self.dataSet) {
        return nil;
    }
    for (id obj in self.dataSet) {
        if (obj == object) {
            return obj;
        } else if ([obj isEqual:object]) {
            return obj;
        } else if ([object isKindOfClass:[NSString class]] && [obj isEqualToString:object]) {
            return obj;
        }
    }
    return nil;
}

@end
