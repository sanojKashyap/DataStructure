//
//  SKStackUsingLinkedList.h
//  StackProj
//
//  Created by Sanoj Kashyap on 03/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKStackUsingLinkedList : NSObject
-(instancetype)initStackWithNodeSize:(int)size;
-(void)pushItem:(int)item;
-(void)popItem;
-(void)printStack;


@end
