//
//  SKDoubleEndedQueue.h
//  StackProj
//
//  Created by Sanoj Kashyap on 14/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKDoubleEndedQueue : NSObject
-(instancetype)initDoubleEndedQueue ;
-(void)insertElementAtFrontEnd:(int)item;
-(void)insertElementAtRearEnd:(int)item;
-(int)deleteElementFromFrontEnd;
-(int)deleteElementFromRearEnd;
@end
