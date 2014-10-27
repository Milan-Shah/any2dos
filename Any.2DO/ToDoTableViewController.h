//
//  ToDoTableViewController.h
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddToDoViewController.h"

@interface ToDoTableViewController : UITableViewController <AddToDoViewControllerDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;

@property (nonatomic,strong) NSFetchedResultsController *fetchedResultsController;

@end
