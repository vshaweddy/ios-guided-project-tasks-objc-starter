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

- (void)testTask {
	
	LSITask *task = [[LSITask alloc] init];
	
	NSTimeInterval oneHourIntoFuture = 60 * 60;
	
	// Dot notation = syntatic sugar
	
	// Setters with dot syntax
	task.date = [NSDate dateWithTimeIntervalSinceNow:oneHourIntoFuture];
	task.name = @"Walk the Dog";
	task.notes = @"Walk Row 3 miles";
	
	NSLog(@"Task: %@", task.name);
	
	// Setter with method call
	[task setDate:[NSDate date]];
	
	// Getter with dot syntax
	NSDate *endDate = task.date;
	
	// Getter with method call
	endDate = [task date];
	
	
	
}



@end
