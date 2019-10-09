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

// Public methods

@end
