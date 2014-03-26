//
//  NIAUAppDelegate.h
//  New Internationalist Magazine Australia
//
//  Created by Simon Loffler on 20/06/13.
//  Copyright (c) 2013 New Internationalist Australia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SSZipArchive.h>

extern const char NotificationKey;

@interface NIAUAppDelegate : UIResponder <UIApplicationDelegate, NSURLConnectionDownloadDelegate, NSURLConnectionDelegate, SSZipArchiveDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
