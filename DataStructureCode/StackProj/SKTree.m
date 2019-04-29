//
//  SKTree.m
//  StackProj
//
//  Created by Sanoj Kashyap on 17/05/17.
//  Copyright © 2017 Sanoj Kashyap. All rights reserved.
//

#import "SKTree.h"

/*!
 * @desc Binary Tree - Hierarchal data structure like systems folder in computer.
 * Why Trees - Store information that naturally forms a hierarchy
 *           - Trees (with some ordering e.g., BST) provide moderate access/search
 *             (quicker than Linked List and slower than arrays).
 *           - Trees provide moderate insertion/deletion (quicker than Arrays and
 *             slower than Unordered Linked Lists).
 
 *
 */

//  Main applications of trees include:
///1. Manipulate hierarchical data.
///2. Make information easy to search (see tree traversal).
///3. Manipulate sorted lists of data.
///4. As a workflow for compositing digital images for visual effects.
///5. Router algorithms
///6. Form of a multi-stage decision-making (see business chess).

struct Node
{
    int data;
    struct Node *leftchild;
    struct Node *rightChild;
};

@implementation SKTree
//==============================================================================
/* create a new tree node */
//==============================================================================

- (struct Node*)returnNewNode:(int)data {
    
    struct Node *node;
    node = (struct Node*)malloc(sizeof(struct Node));
    
    node->data = data;
    node->leftchild = NULL;
    node->rightChild = NULL;
    
    return node;
}

//==============================================================================
/* create a new tree */
//==============================================================================
- (void)makeSampletree {
    
    struct Node *root = [self returnNewNode:1];
    
    root->leftchild = [self returnNewNode:2];
    root->rightChild = [self returnNewNode:3];
    
    root->leftchild->leftchild = [self returnNewNode:4];
    root->leftchild->rightChild = [self returnNewNode:5];
    
    root->rightChild->leftchild = [self returnNewNode:6];
    root->rightChild->rightChild = [self returnNewNode:7];

    
}

//==============================================================================
/*  Binary Tree | Set 2 (Properties) */
//==============================================================================

/*
 1) The maximum number of nodes at level ‘l’ of a binary tree is 2(pow)l-1.
 2) Maximum number of nodes in a binary tree of height ‘h’ is 2(pow)h – 1. (Height of a leaf node is considered as 1.)
 3) In a Binary Tree with N nodes, minimum possible height or minimum number of levels is  ⌈ Log(base)2(N+1) ⌉
 4) A Binary Tree with L leaves has at least   ⌈ Log2L ⌉ + 1   levels
 5) In Binary tree, number of leaf nodes is always one more than nodes with two children.
  */

//==============================================================================
/*   Types of Binary Tree */
//==============================================================================

/*
 1) Full Binary Tree: A Binary Tree is full if every node has 0 or 2 children.
 2) Complete Binary Tree: A Binary Tree is complete Binary Tree if all levels are completely filled except possibly the last level and the last level has all keys as left as possible
                                18
                                /   \
                              15     30
                             /  \   /  \
                            40   50 100 40
                           / \   /
                          8   7  9
 
 3) Perfect Binary Tree: A Binary tree is Perfect Binary Tree in which all internal nodes have two children and all leaves are at same level.
 4) A degenerate (or pathological) tree: A Tree where every internal node has one child. Such trees are performance-wise same as linked list.
 5) Balanced Binary Tree: A binary tree is balanced if height of the tree is O(Log n) where n is number of nodes
 */

//==============================================================================
/* Enumeration of Binary Trees */
//==============================================================================
/*
 Number of Labeled Tees = (Number of unlabeled trees) * n!
 = [(2n)! / (n+1)!n!]  × n!
 
 Number of unlabeled trees =  [(2n)! / (n+1)!n!]
 */

//==============================================================================
/* Tree Traversals (Inorder, Preorder and Postorder) */
//==============================================================================
/*
 Data - D means root node
 1) Preorder  - DLR
 2) Inorder   - LDR
 3) Postorder - LRD
 4) Levelorder - Contiunes - program can be implemented using quueue (FIFO)
 */

//Time Complexity: O(n)
//Auxiliary Space : If we don’t consider size of stack for function calls then O(1) otherwise O(n).



- (void)printPreOrderOfTree {
    
    struct Node *root = [self returnNewNode:1];
    
    root->leftchild = [self returnNewNode:2];
    root->rightChild = [self returnNewNode:3];
    root->leftchild->leftchild = [self returnNewNode:4];
    root->leftchild->rightChild = [self returnNewNode:5];
    
    
//    [self printPreorder:root];
    // [self printInorder:root];
 [self printPostorder:root];
}

- (void)printInOrderOfTree {
    
    struct Node *root = [self returnNewNode:1];
    
    root->leftchild = [self returnNewNode:2];
    root->rightChild = [self returnNewNode:3];
    root->leftchild->leftchild = [self returnNewNode:4];
    root->leftchild->rightChild = [self returnNewNode:5];
}

- (void)printPostOrderOfTree {
    
    struct Node *root = [self returnNewNode:1];
    root->leftchild = [self returnNewNode:2];
    root->rightChild = [self returnNewNode:3];
    root->leftchild->leftchild = [self returnNewNode:4];
    root->leftchild->rightChild = [self returnNewNode:5];
}

- (void)printLevelorder:(struct Node *)node {
    [queue enqueue:node->data];
    
}

/* Given a binary tree, print its nodes in preorder*/
- (void)printPreorder:(struct Node *)node
{
    if (node == NULL)
        return;
    
    /* first print data of node */
    printf("%d ", node->data);
    
    /* then recur on left sutree */
    [self printPreorder:node->leftchild];
    
    /* now recur on right subtree */
    [self printPreorder:node->rightChild];
}

- (void)printInorder:(struct Node *)node {
    if (node == NULL) {
        return;
    }
    
    [self printInorder:node->leftchild];
    /* first print data of node */
    
    /* second print data of node */
    printf("%d",node->data);

    /* now recur on right subtree */
    [self printInorder:node->rightChild];
}

- (void)printPostorder:(struct Node *)node {
    if (node == NULL) {
        return;
    }
    
    [self printPostorder:node->leftchild];
    
    [self printPostorder:node->rightChild];
    
    //print
    printf("%d",node->data);
}

//==============================================================================
//Level Order Tree Traversal - Using Queue
//==============================================================================
/*!
    Level order traversal of a tree is breadth first traversal for the tree.
 */

/* creating queue */
- (struct Node **)retunQueue:(int *)front withRear:(int*)rear {
    
    struct Node **newQue = (struct Node **)malloc(sizeof(struct node*)*4);
    *front = *rear = 0;
    return newQue;
}

- (void)enQueueWith:(struct Node **)aqueue withRear:(int*)rear withNewNode:(struct Node *)newNode {
    aqueue[*rear] = newNode;
    (*rear)++;
}

- (struct Node*)deQueueWith:(struct Node **)aqueue withfront:(int*)front  {
    (*front)++;
    return aqueue[*front - 1];
}


- (void)printLevelOrder {
    
    struct Node *root = [self returnNewNode:13];
    root->leftchild = [self returnNewNode:21];
    root->rightChild = [self returnNewNode:33];
    root->leftchild->leftchild = [self returnNewNode:74];
    root->leftchild->rightChild = [self returnNewNode:45];
    
    [self printLevelOrder:root];
    
}

- (void)printLevelOrder:(struct Node *)node {
    
    int rear, front;
    struct Node **newqueue = [self retunQueue:&front withRear:&rear];
    struct Node *temp_node = node;
    
    while (temp_node != NULL)
    {
        printf("%d ", temp_node->data);
        
        /*Enqueue left child */
        if (temp_node->leftchild)
            [self enQueueWith:newqueue withRear:&rear withNewNode:temp_node->leftchild];
        if (temp_node->rightChild)
            [self enQueueWith:newqueue withRear:&rear withNewNode:temp_node->rightChild];
        
        /*Dequeue node and make it temp_node*/
        temp_node = [self deQueueWith:newqueue withfront:&front];
    }
}


































@end
