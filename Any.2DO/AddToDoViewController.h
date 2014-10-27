//
//  AddToDoViewController.h
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoList.h"

@protocol AddToDoViewControllerDelegate;

@interface AddToDoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *notefield;
@property (weak, nonatomic) IBOutlet UITextField *dateField;

@property (nonatomic,weak) id <AddToDoViewControllerDelegate> delegate;

@property (nonatomic,strong) ToDoList *currentToDo;


- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end

@protocol AddToDoViewControllerDelegate

-(void) addToDoViewControllerDidSave;
-(void) addToDoViewControllerDidCancel:(ToDoList *)todoToDelete;

@end
