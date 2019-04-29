//
//  SKQueueLinkList.h
//  StackProj
//
//  Created by Sanoj Kashyap on 14/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKQueueLinkList : NSObject
-(void)enqueueItem:(int)item;
-(void)dequeueElemenet;
-(void)printQueue;
@end
