//
//  SKMatrix.h
//  StackProj
//
//  Created by Sanoj Kashyap on 14/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^completionBlock)();

@interface SKMatrix : NSObject
@property (nonatomic,strong) NSString *matrix;
-(void)populateMatrix;
-(void)doMatrixAdd;
-(void)performAction:(completionBlock)completionBlock;
@end
