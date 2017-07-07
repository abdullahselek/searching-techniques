//
//  STLinearSearchTests.m
//  searching-techniques
//
//  Created by Abdullah Selek on 02/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "STLinearSearch.h"
#import <Quick/Quick.h>
@import Nimble;

QuickSpecBegin(STLinearSearchTests)

describe(@"STLinearSearchTests", ^{
    __block STLinearSearch *linearSearch;
    beforeSuite(^{
        linearSearch = [[STLinearSearch alloc] initWithDataSet:@[@"1", @"2", @"3", @"5", @"6", @"7"]];
    });
    context(@".initWithDataSet:", ^{
        it(@"should succeed", ^{
            expect(linearSearch).notTo(beNil());
        });
    });
    context(@".search:", ^{
        it(@"when there is no matching one should return zero", ^{
            int result = [linearSearch search:@"4"];
            expect(result).to(equal(0));
        });
    });
    context(@".search:", ^{
        it(@"when there is matching one should return that value", ^{
            int result = [linearSearch search:@"3"];
            expect(result).to(equal(2));
        });
    });
});

QuickSpecEnd
