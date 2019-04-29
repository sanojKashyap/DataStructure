//
//  SKQueue.m
//  StackProj
//
//  Created by Sanoj Kashyap on 10/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import "SKQueue.h"
#define  QueueSize  5

@interface SKQueue ()
{
    int front,rear;
    NSMutableArray *queue;
}
@end

@implementation SKQueue
-(instancetype)initQueue
{
    
    self = [super init];
    if(!self){
        return nil;
    }
    front = -1;
    rear  = -1;
    self->queue = [[NSMutableArray alloc] initWithCapacity:QueueSize];
    return self;
    
}

-(void)enqueue:(int)item {
    
    if (rear == QueueSize-1) {
    
        NSLog(@"Queue Overflow");
        return;
    }else {
        
        if (front==-1) {
            // Queue is intially empty
            front =0;
        }
        rear++;
        [queue addObject:[NSNumber numberWithInt:item]];


    }
}
-(void)dequeue {
    
    if (front ==-1 && front > rear) {
        NSLog(@"Queue is underflow");
        return;
    }else {
    
        [queue removeObjectAtIndex:front];
        front++;
    }
}


-(void)display {

    for (id data in queue) {
        
        NSLog(@"Queue elements are : %@",data);
    }
}


#pragma mark -
#pragma mark Circular Queue

-(void)enqueueInCircularQueue:(int)item {
    
    // checking that whether from and rear pointing to same element which means there is no space for element
    if ((front == rear+1) ||(front ==0 && rear == QueueSize-1) ) {
        NSLog(@"Queue is Full");
    }else if (rear ==-1) {
    // Adding new element
        rear = 0;
        front =0;
    }else if (rear == QueueSize-1) {
        //
        rear = 0;
    }else
        rear ++;
    [queue addObject:[NSNumber numberWithInt:item]];
    
}
-(void)dequeueCircularQueue {
    int item = [[queue objectAtIndex:front] intValue];
    [queue removeObjectAtIndex:front];

    if (front ==-1) {
        NSLog(@"Circular Queue UnderFlow");
        
    }else if (front == rear){
        
        front =-1;
        rear = -1;
    }else if(front == QueueSize-1)
    {
        front =0;
    }else {
        front++;
    }
    NSLog(@"Item Deleted:- %d",item);
}
-(void)displayCircularQueue {
    
    int i;
    
    if((front == -1) || (front==rear+1))
        printf("\n\nQueue is empty.\n");
    else
    {
        printf("\n\n");
        
        for(i=front; i<=rear; i++)
            printf("->%d",[[queue objectAtIndex:i] intValue]);
    }
}


@end

