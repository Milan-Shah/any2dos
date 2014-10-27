//
//  DisplayEditViewController.m
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _nameField.text = [self.currentToDo name];
    _notesField.text = [self.currentToDo notes];
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM--dd"];
    _dueDateField.text = [df stringFromDate:[self.currentToDo dueDate]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)doneEditing:(id)sender {
    
    _nameField.enabled = NO;
    _notesField.enabled = NO;
    _dueDateField.enabled = NO;
    
    _nameField.borderStyle = UITextBorderStyleNone;
    _notesField.borderStyle = UITextBorderStyleNone;
    _dueDateField.borderStyle = UITextBorderStyleNone;
    
    _editButton.hidden = NO;
    _doneButton.hidden = YES;
    
    _currentToDo.name = _nameField.text;
    _currentToDo.notes = _notesField.text;
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM--dd"];
    _currentToDo.dueDate = [df dateFromString:_dueDateField.text];
    
    AppDelegate *myApp = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    [myApp saveContext];
}

- (IBAction)startEditing:(id)sender {
    
    _nameField.enabled = YES;
    _notesField.enabled = YES;
    _dueDateField.enabled = YES;
    
    _nameField.borderStyle = UITextBorderStyleRoundedRect;
    _notesField.borderStyle = UITextBorderStyleRoundedRect;
    _dueDateField.borderStyle = UITextBorderStyleRoundedRect;
    
    _editButton.hidden = YES;
    _doneButton.hidden = NO;
    
}
@end
