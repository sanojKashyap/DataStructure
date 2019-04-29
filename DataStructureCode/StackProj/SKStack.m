//
//  SKStack.m
//  StackProj
//
//  Created by Sanoj Kashyap on 03/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#define MAXSIZE 10

#import "SKStack.h"
@interface SKStack () {
    NSMutableArray *stackArray;
    int top;
}
@end

@implementation SKStack

-(void)pushItem:(int)pushItems {
    
    if (top >= MAXSIZE) {
        NSLog(@"Stack Over Flow");
    }else {
        [stackArray addObject:[NSNumber numberWithInt:pushItems]];
        top++;
    }
}
- (void)popItem {
    
    if (top == -1) {
        NSLog(@"Stack UnderFlow");
    }else {
        [stackArray removeObjectAtIndex:top];
        top--;
    }
}
- (void)printStack {
    
    for (id adata in stackArray) {
        NSLog(@"Stack Element:-%@",adata);
    }
}

-(instancetype)initStackWithCapacity:(int)capacity; {
    
    self = [super init];
    if (!self) {
        return nil;
    }

    if (stackArray == nil) {
        top = -1;
        stackArray = [[NSMutableArray alloc] initWithCapacity:capacity];
    }
    return  self;
}

@end
