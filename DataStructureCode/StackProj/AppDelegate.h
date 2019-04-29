//
//  AppDelegate.h
//  StackProj
//
//  Created by Sanoj Kashyap on 03/07/15.
//  Copyright (c) 2015 Sanoj Kashyap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,NSURLSessionDelegate, NSURLSessionDownloadDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (copy, nonatomic) void (^backgroundSessionCompletionHandler)();


@end

