//
//  STBinarySearchTests.m
//  SearchingTechniques
//
//  Created by Abdullah Selek on 05/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "STBinarySearch.h"
#import <Quick/Quick.h>
@import Nimble;

@interface STBinarySearch (Tests)

@property (nonatomic) NSArray *dataSet;
- (void)sortDataSet;

@end

QuickSpecBegin(STBinarySearchTests)

describe(@"STBinarySearchTests", ^{
    __block STBinarySearch *binarySearch;
    beforeSuite(^{
        binarySearch = [[STBinarySearch alloc] initWithDataSet:@[@10, @8, @3, @4, @5, @6, @9, @7]];
    });
    context(@".initWithDataSet:", ^{
        it(@"should succeed", ^{
            expect(binarySearch).notTo(beNil());
        });
    });
    context(@".sortDataSet", ^{
        it(@"should sort completely", ^{
            [binarySearch sortDataSet];
            expect(binarySearch.dataSet[0]).to(equal(@3));
            expect(binarySearch.dataSet[1]).to(equal(@4));
            expect(binarySearch.dataSet[2]).to(equal(@5));
            expect(binarySearch.dataSet[3]).to(equal(@6));
            expect(binarySearch.dataSet[4]).to(equal(@7));
            expect(binarySearch.dataSet[5]).to(equal(@8));
            expect(binarySearch.dataSet[6]).to(equal(@9));
            expect(binarySearch.dataSet[7]).to(equal(@10));
        });
    });
    context(@".search:", ^{
        it(@"when there is no matching one should return zero", ^{
            int result = [binarySearch search:@1];
            expect(result).to(equal(0));
        });
    });
    context(@".search:", ^{
        it(@"when there is matching one should return index", ^{
            int result = [binarySearch search:@5];
            expect(result).to(equal(2));
        });
    });
});

QuickSpecEnd
