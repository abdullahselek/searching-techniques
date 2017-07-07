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

@end
