//
//  main.m
//  libx265Example
//
//  Created by lizhuoli on 2019/2/2.
//  Copyright © 2019 SDWebImage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <libx265/x265.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Decoder version: %s", x265_version_str);
    }
    return 0;
}
