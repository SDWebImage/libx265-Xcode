# libx265 + Xcode

[![CI Status](http://img.shields.io/travis/SDWebImage/libx265-Xcode.svg?style=flat)](https://travis-ci.org/SDWebImage/libx265-Xcode)
[![Version](https://img.shields.io/cocoapods/v/libx265.svg?style=flat)](http://cocoapods.org/pods/libx265)
[![License](https://img.shields.io/cocoapods/l/libx265.svg?style=flat)](http://cocoapods.org/pods/libx265)
[![Platform](https://img.shields.io/cocoapods/p/libx265.svg?style=flat)](http://cocoapods.org/pods/libx265)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/SDWebImage/libx265-Xcode)

A wrapper for [libx265](https://github.com/videolan/x265) + Xcode project.

libx265 is a free software library and application for encoding video streams into the H.265/MPEG-H HEVC compression format.

This enables Carthage and SwiftPM support.

This repo also including the CocoaPods's spec file to use libx265 with the dependency management instead of the vendored library.

## Requirements

+ iOS 9.0
+ macOS 10.11
+ tvOS 9.0
+ watchOS 2.0

## Installation

### SwiftPM

libx265 is available through [Swift Package Manager](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg).

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libx265-Xcode", from: "3.4.0")
    ],
    // ...
)
```

### Carthage

libx265 is (via this repo) available through [Carthage](https://github.com/Carthage/Carthage).

```
github "SDWebImage/libx265-Xcode"
```

### CocoaPods

libx265 is available through [CocoaPods](https://github.com/CocoaPods/CocoaPods).

```
pod 'libx265'
```

## Usage

Use libx265 as you would normally, this is just a repo that adds an Xcode proj.

## License

libx265 is available under the GPL license or a commercial license. See [x265.org](http://x265.org/) for more info.


