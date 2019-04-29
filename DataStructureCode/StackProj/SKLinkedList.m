//
//  SKLinkedList.m
//  StackProj
//
//  Created by Sanoj Kashyap on 06/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import "SKLinkedList.h"

struct Node {
    int data;
    struct Node *next;
};

struct Node *head = NULL;

@implementation SKLinkedList

- (void)insertNodeItem:(int)Item {
    
    struct Node *newNode ,*temp;
    newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = Item;
    newNode->next = NULL;
    
    if (head == NULL) {
        head = newNode;
    }else {
        temp = head;
        while (temp->next != NULL) {
            temp = temp->next;
        }
        temp->next = newNode;
    }
}

- (void)printLinkedList {
    
    struct Node *temp;
    temp = head;
    while (temp != NULL) {
        NSLog(@"LinkList Node: %d", temp->data);
        NSLog(@"->");
        temp = temp->next;
    }
}

//==============================================================================
// delete node from linked list
//==============================================================================

- (void)deleteNodeWithData:(int)data {
    
    struct Node *temp = NULL;
    struct Node *p = NULL;
    temp = head;
    
    if(temp->data == data){
        NSLog(@" Deleted Node of Linked List: %d",temp->data);
        head = temp->next;
    }else {
        p = head;
        temp = head->next;
        while (temp != NULL) {
            if (temp->data == data) {
                NSLog(@" Deleted Node of Linked List: %d",temp->data);
                p->next = temp->next;
            }
            p=temp;
            temp = temp->next;
        }
    }
}

//==============================================================================
// Search Element in Linked List
//==============================================================================
-(BOOL)SearchNodeInLinkedList:(int)data {
    
    struct Node *temp = NULL;
    struct Node *t = NULL;
    t= head;
    temp = head;
    while (temp!=NULL) {
        
        if (data == temp->data) {
            return YES;
        }
        temp = temp->next;
    }
    return false;
}

//==============================================================================
//Search Middle Element
//==============================================================================

-(void)SearchMiddleElement {
    
    struct Node *slowPtr = head;
    struct Node *fastPtr = head;
    
    if (head!=NULL) {
        while(fastPtr!=NULL && fastPtr->next !=NULL) {
            slowPtr = slowPtr->next;
            fastPtr = fastPtr->next->next;
        }
        NSLog(@"Middle Element = %d",slowPtr->data);
    }
}


//==============================================================================
/* Function to get the middle of the linked list*/
//==============================================================================

- (void) printMiddle
{
    int count = 0;
    struct Node *mid = head;
    
    while (head != NULL) {
        /* update mid, when 'count' is odd number */
        if (count & 1)
            mid = mid->next;
        ++count;
        head = head->next;
    }
    
    /* if empty list is provided */
    if (mid != NULL)
        printf("The middle element is [%d]\n\n", mid->data);
}

//==============================================================================
//Length of linked List
//==============================================================================
-(int)lengthOfLinkedList {
    
    int length = 0;
    struct Node *temp = NULL;
    temp = head;
    
    while (temp!=NULL) {
        length++;
        temp = temp->next;
    }
    return length;
}

// some issue with deleting index

-(void)deleteNodeWithIndex:(int)index {
    
    struct Node *temp = NULL;
    struct Node *p = NULL;
    temp = head;
    int IndexCount =0;
    if (index == 1) {
        
        NSLog(@" Deleted index of Linked List: %d",IndexCount);
        head = temp->next;
    }else {
        p = head;
        temp = head->next;
        while (temp!=NULL) {
            ++IndexCount;
            if (index == IndexCount) {
                
                p->next = temp->next;
            }
            head = p;
            temp = temp->next;
        }
    }
}

//==============================================================================
// N th node from end
//==============================================================================
- (void)getNthNodeFromEndOfLinkedLIst:(int)nodeIndex {

    if (nodeIndex==0) {
        NSLog(@"Entered Wrong Number node");
        return;
    }
    
    struct Node *slowPtr = head;
    struct Node *fastPtr = head;
    int count = 0;
    
    //Now movedFaster pointer to nodeindex
    while (fastPtr!=NULL && count !=nodeIndex-1) {
        fastPtr = fastPtr->next;
        count++;
    }
    
    if (head!=NULL) {
        while(fastPtr!=NULL && fastPtr->next !=NULL) {
            slowPtr = slowPtr->next;
            fastPtr = fastPtr->next;
        }
        NSLog(@"Element = %d",slowPtr->data);
    }
}

//==============================================================================
// N th node from end
//==============================================================================
- (struct Node*)reverseLinkedList {
    
    struct Node *prev = NULL;
    struct Node *current = head;
    struct Node *next;
    
    while (current!=NULL) {
        next = current->next;
        current->next = prev;
        prev = current;
        current = next;
    }
    head = prev;
    while (head!=NULL) {
        
        NSLog(@"Reverse Element:- %d",head->data);
        head = head->next;
    }
    return head;
}


//==============================================================================
//Delete the complete LInked List
//==============================================================================

- (void)deleteLinkedList {
    
    struct Node *current = head;
    struct Node *next;
    
    while (current!=NULL) {
        next = current->next;
        free(current);
        current = next;
    }
    head = NULL;
}


@end
