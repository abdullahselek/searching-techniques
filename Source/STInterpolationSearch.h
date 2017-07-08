//
//  STInterpolationSearch.h
//  SearchingTechniques
//
//  Created by Abdullah Selek on 07/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface STInterpolationSearch : NSObject

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithDataSet:(NSArray *)dataSet;
- (int)search:(int)x;

@end

NS_ASSUME_NONNULL_END
