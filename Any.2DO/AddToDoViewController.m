//
//  AddToDoViewController.m
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import "AddToDoViewController.h"

@interface AddToDoViewController ()

@end

@implementation AddToDoViewController

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
    _notefield.text = [self.currentToDo notes];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    _dateField.text = [dateFormat stringFromDate:[self.currentToDo dueDate]];
    
    

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

- (IBAction)cancel:(id)sender {
    //dismiss and remove the object
    [self.delegate addToDoViewControllerDidCancel:[self currentToDo]];
    
}

- (IBAction)save:(id)sender {
    //dismiss and save the context
    
    [self.currentToDo setName:_nameField.text];
    [self.currentToDo setNotes:_notefield.text];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    [self.currentToDo setDueDate:[dateFormat dateFromString:_dateField.text]];
    
    [self.delegate addToDoViewControllerDidSave];
    
}
@end
