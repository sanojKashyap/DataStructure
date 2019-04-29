//
//  SKTree.h
//  StackProj
//
//  Created by Sanoj Kashyap on 17/05/17.
//  Copyright © 2017 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKQueue.h"


@interface SKTree : NSObject
{
    SKQueue *queue;
}
- (void)makeSampletree;
- (void)printPreOrderOfTree;
- (void)printInOrderOfTree;
- (void)printPostOrderOfTree;
- (void)printLevelOrder;

- (struct Node*)returnNewNode:(int)data;
@end
