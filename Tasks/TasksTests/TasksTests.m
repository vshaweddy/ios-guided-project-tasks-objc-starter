//
//  TasksTests.m
//  TasksTests
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSITask.h" // TODO: import the LSITask into both targets

@interface TasksTests : XCTestCase

@end

@implementation TasksTests

- (void)testCFunctions {

	// Calling a C function
	CGPoint point = CGPointMake(5, 7);
	NSLog(@"Point: %f, %f", point.x, point.y);

	LSITask *task = createTask(); // Call C function, returns Objective-C class
	
	LSITask *dogWalk = createTaskWithTitle(@"Walk the dog");
	
	int appleCount = countApples();
	NSLog(@"AppleCount: %d", appleCount);

}

@end
