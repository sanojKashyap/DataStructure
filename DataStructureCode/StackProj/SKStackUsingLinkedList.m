//
//  SKStackUsingLinkedList.m
//  StackProj
//
//  Created by Sanoj Kashyap on 03/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import "SKStackUsingLinkedList.h"
struct Node {
    
    int data;
    struct Node *ptr;
}*top,*temp = NULL;

@interface SKStackUsingLinkedList ()
{
    
}
@end

@implementation SKStackUsingLinkedList

-(instancetype)initStackWithNodeSize:(int)size {
    
    if (self !=[super init]) {
        return nil;
    }
    return self;
    
}
-(void)pushItem:(int)item{
    
    if (top ==NULL) {
        top = (struct Node*)malloc(1*sizeof(struct Node));
        top->data = item;
        top->ptr = NULL;
    }else {
    
        temp = (struct Node*)malloc(1*sizeof(struct Node));
        temp->ptr = top;
        temp->data = item;
        top = temp;
    }
    
    
}
-(void)popItem {
    
    struct Node* atemp;
    atemp = top;
    if (atemp == NULL) {
        NSLog(@"Stack UnderFlow");
    }else {
        NSLog(@"Stack Element removed:%d",atemp->data);
        top = top->ptr;
        free(atemp);
        
    }
}
-(void)printStack {
    
    if (top ==NULL) {
        
        NSLog(@"Stack is Empty");
    }else {
        struct Node *temp;
        temp = top;
        while (temp!=NULL) {
            NSLog(@"Stack Elements:%d",temp->data);
            temp = temp->ptr;
        }
    }
    
}


@end
