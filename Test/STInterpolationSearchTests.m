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
- (void)sortDataSet;

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
    context(@".sortDataSet", ^{
        it(@"should sort completely", ^{
            [interpolationSearch sortDataSet];
            expect(interpolationSearch.dataSet[0]).to(equal(@3));
            expect(interpolationSearch.dataSet[1]).to(equal(@4));
            expect(interpolationSearch.dataSet[2]).to(equal(@5));
            expect(interpolationSearch.dataSet[3]).to(equal(@6));
            expect(interpolationSearch.dataSet[4]).to(equal(@7));
            expect(interpolationSearch.dataSet[5]).to(equal(@8));
            expect(interpolationSearch.dataSet[6]).to(equal(@9));
            expect(interpolationSearch.dataSet[7]).to(equal(@10));
        });
    });
    context(@".search:", ^{
        it(@"when there is no matching one should return zero", ^{
            int result = [interpolationSearch search:1];
            expect(result).to(equal(0));
        });
    });
    context(@".search:", ^{
        it(@"when there is matching one should return index", ^{
            int result = [interpolationSearch search:5];
            expect(result).to(equal(2));
        });
    });
});

QuickSpecEnd
