//
//  SKQueueLinkList.m
//  StackProj
//
//  Created by Sanoj Kashyap on 14/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import "SKQueueLinkList.h"

struct Node {

    int data;
    struct Node *next;
}*rear = NULL,*front = NULL;

@implementation SKQueueLinkList

-(void)enqueueItem:(int)item
{
    struct Node *temp;
    
    temp = (struct Node*)malloc(sizeof(struct Node));
    temp->data = item;
    temp->next = NULL;
    
    if (front == NULL) {
        
        front = temp;
        
    }else {
    
        rear->next = temp;
    }
    rear = temp;
    
}

-(void)dequeueElemenet {
    
    struct Node *temp;
    if (front == NULL) {
        NSLog(@"Queue UnderFlow");
    }else {
    
        temp = front;
        front = front->next;
        NSLog(@"Deleted Queue Element is:%d",temp->data);
        free(temp);
    }

}

-(void)printQueue {

    struct Node *head;
    head = front;
    if (front == NULL) {
        NSLog(@"Queue is Empty");
    }else {
    
        while (head!=NULL) {
            
            NSLog(@"Queue:%d",head->data);
            head = head->next;
 
        }
    }
}


@end
