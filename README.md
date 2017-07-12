[![Build Status](https://travis-ci.org/abdullahselek/searching-techniques.svg?branch=master)](https://travis-ci.org/abdullahselek/searching-techniques)
![CocoaPods Compatible](https://img.shields.io/cocoapods/v/SearchingTechniques.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Coverage Status](https://coveralls.io/repos/github/abdullahselek/searching-techniques/badge.svg?branch=master)](https://coveralls.io/github/abdullahselek/searching-techniques?branch=master)

# searching-techniques

Different searching techniques with Objective-C.

## Requirements

iOS 9.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+

## Installation

### CocoaPods

CocoaPods is a dependency manager for Cocoa projects. You can install it with the following command:
```	
$ gem install cocoapods
```

To integrate SearchingTechniques into your Xcode project using CocoaPods, specify it in your Podfile:
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'SearchingTechniques', '~> 0.4'
end
```
Then, run the following command:
```
$ pod install
```
### Carthage

Carthage is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with Homebrew using the following command:

```
brew update
brew install carthage
```

To integrate SearchingTechniques into your Xcode project using Carthage, specify it in your Cartfile:

```
github "abdullahselek/searching-techniques" ~> 0.4
```

Run carthage update to build the framework and drag the built SearchingTechniques.framework into your Xcode project.

## Example Usage

### Linear Search

```
STLinearSearch *linearSearch = [[STLinearSearch alloc] initWithDataSet:@[@"1", @"2", @"3", @"5", @"6", @"7"]];
int index = [linearSearch search:@"2"];
```

### Binary Search

```
STBinarySearch *binarySearch = [[STBinarySearch alloc] initWithDataSet:@[@10, @8, @3, @4, @5, @6, @9, @7];
int index = [binarySearch search:@5];
```

### Interpolation Search

```
STInterpolationSearch *interpolationSearch = [[STInterpolationSearch alloc] initWithDataSet:@[@10, @8, @3, @4, @5, @6, @9, @7]];
int index = [interpolationSearch search:5];
```