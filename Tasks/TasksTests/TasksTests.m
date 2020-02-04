//
//  TasksTests.m
//  TasksTests
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
//#import "../Tasks/Model/LSITask.h"  // #import bug? may need relative path to a Model group
#import "VVSTask.h"

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

// NOTE: For any file you want to use
// 1. Add the .m file to your unit test target
// 2. Import the file above
// 3. If you use a framework like MapKit, you may need to add the framework to your main target

- (void)testCode {
	// String literal
    NSString *name = @"Wash dishes";
    
    // print("Task: \(name)")
    printf("\n"); // make it easy to read
    NSLog(@"Task: %@", name); // %@ = object token
    
    // C printing function (print formatted)
    printf("Task: %s\n", name.UTF8String); // %s = c-string
    printf("\n"); // make it easy to read
    
    VVSTask *task = [[VVSTask alloc] init];
}

@end
