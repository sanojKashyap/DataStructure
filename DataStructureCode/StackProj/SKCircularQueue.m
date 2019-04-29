//
//  SKCircularQueue.m
//  StackProj
//
//  Created by Sanoj Kashyap on 14/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//


#import "SKCircularQueue.h"
#define MAX_SIZE 10;

@interface  SKCircularQueue ()
{
    int circularArray[10];
    int front,rear;
    int MAXSIZE;
}
@end


@implementation SKCircularQueue

-(instancetype)initCircularQueueWithSize:(int)size {
    
    self = [super init];
    if (!self) {
        
        return nil;
    }
    front =-1;
    rear = -1;
    MAXSIZE =10;
    return self;

}
-(BOOL)isFull {

    if ((front == 0 && rear == MAXSIZE-1) ||front == rear+1) {
        return true;
    }
    return false;

}
-(void)enqueueItem:(int)item {
    
    if ([self isFull]) {
        NSLog(@"CircularQueue OverFlow");
        return;
             
    }
    
    if (front ==-1) {
        front =0;
    }
    
    if (rear == MAXSIZE -1) { // rear is at the last position of the queue
        rear = 0;
    
    }else {
    
        rear++;
    }
    circularArray[rear]=item;

}
-(BOOL)isEmpty {

    if (front ==-1) {
        return true;
    }
    return false;
}
-(int)dequeueElemenet {
    

    if ([self isEmpty]) {
        
        NSLog(@"Circular Queue is Empty");
        exit(1);
        
    }
    int item = circularArray[front];
    if (front == rear){ //Queue has only one element
    
        front = -1;
        rear = -1;
    }else if (front == MAXSIZE-1) {
    
        front = 0;
    }else {
        front = front+1;
    }
    return item;
    
}
-(void)printQueue {
    int i;
    if (front <=rear) {
        i=front;
        while (i <= rear) {
            NSLog(@"Queue elements are : %d",circularArray[i++]);
        }
    }else {
        while (i<=MAXSIZE-1) {
            NSLog(@"Queue elements are : %d",circularArray[i++]);
        }
        i=0;
        while (i<=rear) {
            NSLog(@"Queue elements are : %d",circularArray[i++]);
        }
        
    }
    
}

@end
