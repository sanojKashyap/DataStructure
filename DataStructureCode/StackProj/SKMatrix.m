//
//  SKMatrix.m
//  StackProj
//
//  Created by Sanoj Kashyap on 14/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import "SKMatrix.h"

@interface SKMatrix ()
{

    int MatrixSum [2][2];
    int MatrixMul [2][2];

}
@end
@implementation SKMatrix

-(void)performAction:(completionBlock)completionBlock {

    NSLog(@"Action Performed");
    completionBlock();
}

-(void)populateMatrix {
    
    int Matrix1 [2][2] = {2,2,2,2};
    int Matrix2 [2][2] = {3,4,4,3};
    // Populating matrix1
//    for (int i=0; i<2; i++) {
//        
//        for (int j=0; j<2; j++) {
//            
//            scanf("%d",&Matrix1[i][j]);
//        }
//    }
//    // Populating matrix2
//    for (int i=0; i<2; i++) {
//        
//        for (int j=0; j<2; j++) {
//            
//            scanf("%d",&Matrix2[i][j]);
//        }
//    }
    
    // Print the Matrix
    for (int i=0; i<2; i++) {
        
        for (int j=0; j<2; j++) {
            
            printf("%d",Matrix1[i][j]);
        }
    }
    NSLog(@"\n");
    for (int i=0; i<2; i++) {
        
        for (int j=0; j<2; j++) {
            
            printf("%d",Matrix2[i][j]);
        }
    }
    
    // addition of the matrices
    
    for (int i=0; i<2; i++) {
        
        for (int j=0; j<2; j++) {
            
            MatrixSum [i][j] = Matrix1 [i][j]+Matrix2 [i][j];
        }
    }
    
    // multiplications of the matrices
    
    for (int i=0; i<2; i++) {
        
        for (int j=0; j<2; j++) {
            MatrixMul [i][j] = 0;
            
            for (int k=0; k<2/*col*/; k++) {
                MatrixMul [i][j] += Matrix1 [i][k]*Matrix2 [k][j];
            }
            
        }
    }

    
    for (int i=0; i<2; i++) {
        
        for (int j=0; j<2; j++) {
            
            printf("%d",MatrixSum[i][j]);
            printf("\n");
        }
    }
    for (int i=0; i<2; i++) {
        
        for (int j=0; j<2; j++) {
            
            printf("%d",MatrixMul[i][j]);
            printf("\n");
        }
    }

}
-(void)doMatrixAdd {
    
   
    
}
@end
