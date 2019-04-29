//
//  SKQueue.h
//  StackProj
//
//  Created by Sanoj Kashyap on 10/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKQueue : NSObject
-(instancetype)initQueue;
//Normal Queue
-(void)enqueue:(int)item;
-(void)dequeue;
-(void)display;

//Circular Queue
-(void)enqueueInCircularQueue:(int)item;
-(void)dequeueCircularQueue;
-(void)displayCircularQueue;

@end
