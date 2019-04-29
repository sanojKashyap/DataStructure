//
//  SKLinkedList.h
//  StackProj
//
//  Created by Sanoj Kashyap on 06/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKLinkedList : NSObject
-(void)insertNodeItem:(int)Item;
-(void)deleteNodeWithData:(int)data;
-(void)deleteNodeWithIndex:(int)index;
-(void)printLinkedList;

//length of linked List
-(int)lengthOfLinkedList;

// Search Element in Linked List
-(BOOL)SearchNodeInLinkedList:(int)data;

//Search Middle Element
//Method-1
-(void)SearchMiddleElement;
//Method -2
- (void) printMiddle;
// N th node from end
-(void)getNthNodeFromEndOfLinkedLIst:(int)nodeIndex;
//delete the complete linked list
-(void)deleteLinkedList;
-(struct Node*)reverseLinkedList;
@end
