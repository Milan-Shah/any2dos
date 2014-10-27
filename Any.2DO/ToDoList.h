//
//  ToDoList.h
//  Any.2DO
//
//  Created by Milan Shah on 8/3/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ToDoList : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSDate * dueDate;

@end
