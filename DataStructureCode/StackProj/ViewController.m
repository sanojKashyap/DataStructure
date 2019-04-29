//
//  ViewController.m
//  StackProj
//
//  Created by Sanoj Kashyap on 03/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import "ViewController.h"
#import "SKStack.h"
#import "SKStackUsingLinkedList.h"
#import "SKLinkedList.h"
#import "SKQueue.h"
#import "SKQueueLinkList.h"
#import "SKCircularQueue.h"
#import "SKMatrix.h"
#import "MediaPlayer/MediaPlayer.h"
#import "SKTree.h"




@interface ViewController ()
{

    SKMatrix *matroxAdd;

}
@end

static int counter ;
@implementation ViewController

- (IBAction)handleClick:(id)sender {
    
    
    NSString *customURL = @"savvy://";
    
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:customURL]])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:customURL]];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"URL error"
                                                        message:[NSString stringWithFormat:@"No custom URL defined for %@", customURL]
                                                       delegate:self cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

-(void)callCircularArray {
    SKCircularQueue *circularqueue = [[SKCircularQueue alloc] initCircularQueueWithSize:10];
    [circularqueue enqueueItem:1];
    [circularqueue enqueueItem:2];
    [circularqueue enqueueItem:3];
    [circularqueue enqueueItem:4];
    [circularqueue enqueueItem:5];
    NSLog(@"Deleted element:%d",[circularqueue dequeueElemenet]);
    [circularqueue enqueueItem:6];
    [circularqueue enqueueItem:7];
    [circularqueue enqueueItem:8];
    [circularqueue enqueueItem:9];
    [circularqueue enqueueItem:10];
    [circularqueue enqueueItem:11];
    [circularqueue printQueue];

}
-(void)queueUsingLinkedList {
        SKQueueLinkList *queueLinkList = [[SKQueueLinkList alloc] init];
        [queueLinkList enqueueItem:1];
        [queueLinkList enqueueItem:2];
        [queueLinkList dequeueElemenet];
        [queueLinkList dequeueElemenet];
        [queueLinkList enqueueItem:3];
        [queueLinkList enqueueItem:4];
        [queueLinkList enqueueItem:5];
        [queueLinkList printQueue];
}
-(void)callQueue {
    
        SKQueue *queue = [[SKQueue alloc] initQueue];
    //    [queue enqueue:1];
    //    [queue enqueue:2];
    //    [queue dequeue];
    //    [queue enqueue:3];
    //   [queue enqueue:4];
        [queue enqueueInCircularQueue:10];
        [queue enqueueInCircularQueue:20];
        [queue enqueueInCircularQueue:30];
        [queue enqueueInCircularQueue:40];
        [queue enqueueInCircularQueue:50];
        [queue dequeueCircularQueue];
    //    [queue dequeueCircularQueue];
    
        [queue displayCircularQueue];

}

//
//-(void)handleTread:(NSThread*)sender {
//
//
//    while (counter<9) {
////        NSLog(@"before Counter=%d",counter);
//
//        counter++;
////        NSLog(@"After Counter=%d",counter);
//
//        
//    }
//    NSLog(@"Final Counter=%d",counter);
//}

//-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
//
//    if([keyPath isEqualToString:@"hasLostClowCard"])
//    {
//        NSString *oldC = [change objectForKey:NSKeyValueChangeOldKey];
//        NSString *newC = [change objectForKey:NSKeyValueChangeNewKey];
////        if(oldC < newC)
////        {
////            [self hasGainedClowCard];
////        }else
////        {
////            [self hasLostClowCard];
////        }
//    }
//    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
//}
//

//- (void)dealloc {
//    [matroxAdd removeObserver:matroxAdd forKeyPath:@"matrix"];
//}

-(void)hasLostClowCard
{
    NSLog(@"test");
}

-(void)viewWillAppear:(BOOL)animated{

//    [self addObserver:	self
//           forKeyPath:@"myname"
//              options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
//              context:NULL];

//    matroxAdd = [[SKMatrix alloc] init];
//    
//    [matroxAdd setValue:@"SumMatrix" forKeyPath:@"matrix"];
//    NSString *mainCharacter = [matroxAdd valueForKey:@"matrix"];
//    
//    [matroxAdd addObserver:matroxAdd forKeyPath:@"hasLostClowCard" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
//    
//    [matroxAdd setValue:@"MUlMatrix" forKeyPath:@"matrix"];

}
- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"url"];
    [super dealloc];
}

- (void)observeValueForKeyPath:	(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    
    if([keyPath isEqualToString:@"myname"])
            {
                NSString *oldC = [change objectForKey:NSKeyValueChangeOldKey];
                NSString *newC = [change objectForKey:NSKeyValueChangeNewKey];
            }
//            [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];


}

-(NSString*)returnName {

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSString *str = [[[NSString alloc] initWithString:@"Harry"] autorelease];
    [pool drain];
    NSLog(@"%@",str);
    return str;
}

- (void)mynamecompletionHandler:(void (^)(NSString *name))completionHandler {
    NSString *na = @"Sanoj";
    completionHandler (na);
}
- ( void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self mynamecompletionHandler:^(NSString *name) {
        
    }];
    
   
    return;
    SKTree *tree = [[SKTree alloc] init];
    [tree printLevelOrder];
    //[tree printInOrderOfTree];
    //[tree printPostOrderOfTree];
    return;
    
    NSMutableDictionary *temp = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dic = [temp copy];
    [dic setValue:@"Test" forKey:@"name"];
    
//    [self returnName];
    
    
    MPMoviePlayerController *player =
    [[MPMoviePlayerController alloc] initWithContentURL: [NSURL URLWithString:@"https://www.youtube.com/watch?v=oe-K1BcPm5o"]];
    [player prepareToPlay];
    [player.view setFrame: self.view.bounds];  // player's frame must match parent's
    [self.view addSubview: player.view];
    // ...
    [player play];
    
//    SKMatrix *matroxAdd = [[SKMatrix alloc] init];
//    [matroxAdd performAction:^{
//       
//        NSLog(@"Completion Called");
//    }];
    
  //  [self returnName];
    
//    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"www.apple.com"]];
//    NSLog(@"%@",data);

    
    
    
//    [self addObserver:	self
//           forKeyPath:@"myname"
//              options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
//              context:NULL];
//    
//    self.myname = @"sanoj";
//    [self.myname setValue:@"Sanoh" forKeyPath:@"myname"];

//
//    [self addObserver:self.myName forKeyPath:@"Name" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
//
//    [self.myName setValue:@"Sanoj Kashyap" forKeyPath:@"Name"];
    
    
//    [self.myName setValue:@"Sanoj Kashyap" forKey:@"Name"];
    
//    NSArray *a = @[@1,@2,@3,@4,@5,@7];
    
    
//    int i, total;
//    total  = (6+1)*(6+2)/2;
//    for ( i = 0; i< 6; i++)
//        total -= [[a objectAtIndex:i] intValue];
//    NSLog(@"%d",total);
    
//    NSDictionary *data = @{@"Key":@"Sanoj"};
//    counter =0;
//    [NSThread detachNewThreadSelector:@selector(handleTread:) toTarget:self withObject:nil];
//    [NSThread detachNewThreadSelector:@selector(handleTread:) toTarget:self withObject:nil];
    //




    
    
//    SKMatrix *matroxAdd = [[SKMatrix alloc] init];
//    [matroxAdd populateMatrix];
//    [matroxAdd doMatrixAdd];




    
    
//    SKStack *stack = [[SKStack alloc] initStackWithCapacity:10];
//    [stack pushItem:5];
//    [stack pushItem:4];
//    [stack pushItem:6];
//    [stack printStack];
//    [stack popItem];
//    [stack printStack];
    
//    SKStackUsingLinkedList *linkedList = [[SKStackUsingLinkedList alloc] initStackWithNodeSize:5];
//    [linkedList popItem];
//    [linkedList pushItem:2];
//    [linkedList pushItem:4];
//    [linkedList pushItem:5];
//    [linkedList pushItem:6];
//    [linkedList printStack];
//    [linkedList popItem];
//    [linkedList printStack];
    
//    SKLinÁkedList *linkedList = [[SKLinkedList alloc] init];
//    [linkedList insertNodeItem:5];
//    [linkedList insertNodeItem:4];
//    [linkedList insertNodeItem:7];
//    [linkedList insertNodeItem:27];
//    [linkedList insertNodeItem:17];
//    [linkedList insertNodeItem:3];
//    [linkedList insertNodeItem:2];
//    [linkedList printLinkedList];
//    [linkedList deleteNodeWithIndex:2];
//    [linkedList deleteNodeWithIndex:3];
//    NSLog(@"Linked Length = %d",    [linkedList lengthOfLinkedList]);
    //NSLog(@"Linked Item found = %d",    [linkedList SearchNodeInLinkedList:7] );
    //[linkedList printMiddle];
//    [linkedList getNthNodeFromEndOfLinkedLIst:5];
    //[linkedList reverseLinkedList];
    

    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
