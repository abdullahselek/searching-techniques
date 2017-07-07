//
//  STInterpolationSearchTests.m
//  SearchingTechniques
//
//  Created by Abdullah Selek on 07/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "STInterpolationSearch.h"
#import <Quick/Quick.h>
@import Nimble;

@interface STInterpolationSearch (Tests)

@property (nonatomic) NSArray *dataSet;

@end

QuickSpecBegin(STInterpolationSearchTests)

describe(@"STInterpolationSearchTests", ^{
    __block STInterpolationSearch *interpolationSearch;
    NSArray *dataSet = @[@10, @8, @3, @4, @5, @6, @9, @7];
    beforeSuite(^{
        interpolationSearch = [[STInterpolationSearch alloc] initWithDataSet:dataSet];
    });
    context(@".initWithDataSet:", ^{
        it(@"should succeed", ^{
            expect(interpolationSearch).notTo(beNil());
            expect(interpolationSearch.dataSet).to(equal(dataSet));
        });
    });
});

QuickSpecEnd
