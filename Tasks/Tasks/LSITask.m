//
//  LSITask.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITask.h"
#import <CoreGraphics/CoreGraphics.h>

// let zero = 0			 // Swift: Constant
 const int zero = 0;	 // Constant

// Public
// C Function
LSITask *createTask(void) {
//	zero = 34; // Can't change this
//	CGPointMake(5, 7) 	 // C function creates a C-struct
	// CGPoint(x: 5, y: 7) // Swift CGPoint struct init
	
	return [[LSITask alloc] init];
}

LSITask *createTaskWithTitle(NSString *title) {
	// TODO: set task name
	return [[LSITask alloc] init];
}

int countApples(void) {
	return 1;
}

// Objective-C Code

// Class Extension (Anonymous Category)
@interface LSITask () {
	// Private ivars
//	NSString *_name;
}

// Private Properties
@property NSString *identifier;

// Private Outlets

@end


@implementation LSITask

@synthesize name = _name; // NSString *_name; ivar


// Objective-C Method (Instance Functions)
- (LSITask *)createTask {
	return [[LSITask alloc] init];
}

- (LSITask *)createTaskWithTitle:(NSString *)title {
	// TODO: set the title
	return [[LSITask alloc] init];
}

// Override the Default Property

// NSString *_name; // Backing store (ivar)

- (void)setName:(NSString *)name {
	// validate before setting ...
	_name = name;
}

- (NSString *)name {
	return _name;
}


@end
