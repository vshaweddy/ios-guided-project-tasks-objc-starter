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

- (void)testTaskInit {
	LSITask *task = [[LSITask alloc] initWithName:@"Bake a Cake"
											notes:@"Find recipe and bake cake tomorrow"
											 date:[NSDate date]];
	
	NSLog(@"Task: %@", task.name);
	
	LSITask *washTheCar = [LSITask taskWithName:@"Wash the Car"];
	
	NSLog(@"Task: %@", washTheCar.name);
	
	int numTasks = [LSITask numberOfTasksCreated];
	NSLog(@"Tasks created: %d", numTasks);
	
//	[LSITask completeTask]; // NOT going to work
	
	[washTheCar completeTask];
	
}




@end
