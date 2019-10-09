//
//  LSITask.h
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Public C functions

@class LSITask;
LSITask *createTask(void);	// Function declaration
LSITask *createTaskWithTitle(NSString *title);
int countApples(void);





@interface LSITask : NSObject {
	// Public ivars
}

// Public properties


// Autogenerate the setter / getter (depending on property attributes)

// Three things are created with a property
// NSString *_name;	// Instance variable

//- (void)setName:(NSString *)name {
//	_name = name;
//}

//- (NSString *)name {
//	return _name;
//}

@property NSString *name;
@property NSString *notes;
@property NSDate *date;

// Public methods

- (instancetype)initWithName:(NSString *)name
					   notes:(NSString *)notes
						date:(NSDate *)date;

+ (LSITask *)taskWithName:(NSString *)name;
+ (int)numberOfTasksCreated;

- (void)completeTask;


@end
