//
//  SKStack.h
//  StackProj
//
//  Created by Sanoj Kashyap on 03/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKStack : NSObject
-(void)pushItem:(int)pushItems;
-(void)popItem;
-(void)printStack;
//MAX SIZE 10
-(instancetype)initStackWithCapacity:(int)capacity;
@end
