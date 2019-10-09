//
//  LSITaskController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskController.h"

// Class Extension
@interface LSITaskController ()

// Private properties
//@property NSArray *tasks;
@property NSMutableArray *tasks;

@end

// var = variable (can change)
// let = constant (can't change)

// Mutability and Immutability
// NSArray = immutable (constant)
// NSMutableArray = mutable (variable we can change it)

@implementation LSITaskController

- (instancetype)init {
	self = [super init];
	if (self) {
//		_tasks = [NSArray array];
//		_tasks = [[NSArray alloc] init];
//		_tasks = @[];  // Array literal: syntactic sugar
		
//		_tasks = [[NSMutableArray alloc] init];
//		_tasks = [NSMutableArray array];
		_tasks = [@[] mutableCopy];
	}
	return self;
}

- (void)addTask:(LSITask *)task {
	[self.tasks addObject:task];
}

- (void)removeTask:(LSITask *)task {
	[self.tasks removeObject:task];
}

- (NSUInteger)count {
	return [self.tasks count];
}

- (LSITask *)taskAtIndex:(NSUInteger)index {
	return [self.tasks objectAtIndex:index];
}



@end
