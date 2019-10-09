//
//  LSITasksTableViewController.m
//  Tasks
//
//  Created by Paul Solt on 10/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITasksTableViewController.h"
#import "LSITaskController.h"
#import "LSITask.h"
#import "LSITaskDetailViewController.h"

// Class Extension
@interface LSITasksTableViewController ()

@property (nonatomic, readonly) NSDateFormatter *dateFormatter;

@end

@implementation LSITasksTableViewController

- (LSITaskController *)controller {
	if (_controller) { // It exists, return it
		return _controller;
	} else { // Nil, create it (lazy instantiation)
		_controller = [[LSITaskController alloc] init];
		
		// FIXME: Remove test data
		[self createTestData];
		
		return _controller;
	}
}

- (void)createTestData {
	LSITask *task = [[LSITask alloc] initWithName:@"Walk the dog" notes:@"Walk 3 miles" date:[NSDate dateWithTimeIntervalSinceNow:60]];
	
	LSITask *task2 = [[LSITask alloc] initWithName:@"Eat lunch" notes:@"Make a sandwich" date:[NSDate date]];
	
	[self.controller addTask:task];
	[self.controller addTask:task2];
}

// MARK: - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.controller.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
	
	LSITask *task = [self.controller taskAtIndex:indexPath.row];
	
	cell.textLabel.text = task.name;
//	cell.detailTextLabel.text = task.date;
	cell.detailTextLabel.text = [self.dateFormatter stringFromDate:task.date];

	return cell;
}

// MARK: - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
// ShowTaskDetail = show an existing
// ShowCreateTask = create brand new task and add it
    if ([segue.identifier isEqualToString:@"ShowTaskDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        LSITaskDetailViewController *detailVC = segue.destinationViewController;
        detailVC.taskController = self.controller;
        detailVC.task = [self.controller taskAtIndex:indexPath.row];
    }

    if ([segue.identifier isEqualToString:@"ShowCreateTask"]) {
        LSITaskDetailViewController *detailVC = segue.destinationViewController;
        detailVC.taskController = self.controller;
    }
}




// MARK: - Properties

@synthesize dateFormatter = _dateFormatter;
- (NSDateFormatter *)dateFormatter
{
    if (!_dateFormatter) {
        _dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter.dateStyle = NSDateFormatterShortStyle;
        _dateFormatter.timeStyle = NSDateFormatterNoStyle;
    }
    return _dateFormatter;
}

@end
