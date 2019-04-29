//
//  SKDoubleEndedQueue.m
//  StackProj
//
//  Created by Sanoj Kashyap on 14/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//



#import "SKDoubleEndedQueue.h"
@interface SKDoubleEndedQueue ()
{

    int dQueue [10];
    int front,rear;
    int size;
}
@end
@implementation SKDoubleEndedQueue

-(instancetype)initDoubleEndedQueue {

    self = [super init];
    if (!self) {
        
        return nil;
        
    }
    rear = -1;
    front = -1;
    size = 10;
    return self;
}
-(BOOL)isFUll {

    if ((front==0 && rear == size-1)||(front ==rear+1 )) {
        
        return true;
    }
    return false;
}
-(void)insertElementAtFrontEnd:(int)item {


    if ([self isFUll]) {
        NSLog(@"Dqueue is Full");
        return;
    }
    if (front ==-1) {
        front = 0;
        rear = 0;
    }
    else if (front == 0) {
        front = size-1;
    }else {
        front = front-1;
    }
    
    dQueue [front] = item;
}
-(void)insertElementAtRearEnd:(int)item {

    if ([self isFUll]) {
        NSLog(@"Dqueue is Full");
        return;
    }
    
    if (front==-1) {
        front =0;
        rear = 0;
    }else if (rear == size-1) {
        rear = 0;
        
    }else {
        rear = rear+1;
    }
    
    dQueue[rear] = item;
}

-(BOOL)isEmpty {

    if (front==-1) {
        
        return true;
    }
    return false;
}

-(int)deleteElementFromFrontEnd {
    
    if ([self isEmpty]) {
        NSLog(@"DQueue is Empty");
        exit(1);
    }
    int item = dQueue [front];
    if (front == rear) { // Dqueue has only one element
        
        front=-1;
        rear =-1;
        
    }else {
        
        if (front == size-1) {
            front=0;
        }else{
            front = front+1;
        }
        
        }
    return item;
}


-(int)deleteElementFromRearEnd {

    if ([self isEmpty]) {
        NSLog(@"DQueue is Empty");
        exit(1);
    }
    int item = dQueue [rear];
    
    if (front == rear) {
        front = -1;
        rear = -1;
    }else if (rear == 0) {
    
        rear = size-1;
        
    }else {
        rear = rear-1;
    }
    return item;

}


@end
