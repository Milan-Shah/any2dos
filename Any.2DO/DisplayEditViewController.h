//
//  DisplayEditViewController.h
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoList.h"

@interface DisplayEditViewController : UIViewController

@property (nonatomic,strong) ToDoList *currentToDo;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *notesField;
@property (weak, nonatomic) IBOutlet UITextField *dueDateField;

@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;



- (IBAction)startEditing:(id)sender;
- (IBAction)doneEditing:(id)sender;


@end
