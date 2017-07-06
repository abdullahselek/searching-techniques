[![Build Status](https://travis-ci.org/abdullahselek/searching-techniques.svg?branch=master)](https://travis-ci.org/abdullahselek/searching-techniques)
[![Coverage Status](https://coveralls.io/repos/github/abdullahselek/searching-techniques/badge.svg?branch=master)](https://coveralls.io/github/abdullahselek/searching-techniques?branch=master)

# searching-techniques

Different searching techniques with Objective-C.

## Linear Search

```
STLinearSearch *linearSearch = [[STLinearSearch alloc] initWithDataSet:@[@"1", @"2", @"3", @"5", @"6", @"7"]];
int index = [linearSearch search:@"2"];
```

## Binary Search

```
STBinarySearch *binarySearch = [[STBinarySearch alloc] initWithDataSet:@[@10, @8, @3, @4, @5, @6, @9, @7];
int index = [binarySearch search:@5];
```
