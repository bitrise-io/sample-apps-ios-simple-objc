//
//  SceneDelegate.m
//  ios-simple-objc
//
//  Copyright (c) 2014 Bitrise. All rights reserved.
//

#import "SceneDelegate.h"
#import "AppDelegate.h"

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // The window is created from the storyboard named in the Info.plist scene manifest.
}

- (void)sceneDidEnterBackground:(UIScene *)scene {
    [(AppDelegate *)[[UIApplication sharedApplication] delegate] saveContext];
}

@end
