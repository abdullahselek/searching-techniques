//
//  STLinearSearch.h
//  searching-techniques
//
//  Created by Abdullah Selek on 02/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STLinearSearch : NSObject

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithDataSet:(NSArray *)dataSet;
- (int)search:(id)object;

@end
