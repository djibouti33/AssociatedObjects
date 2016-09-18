//
//  AppDelegate.m
//  AssociatedObjects
//
//  Created by Kevin Favro on 9/18/16.
//  Copyright © 2016 Kevin Favro. All rights reserved.
//

#import "AppDelegate.h"
#import "NSArray+AssociatedObjects.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // due to a compiler optimization, empty arrays share a pointer to the same memory address.
    // you can see this for yourself by uncommenting the following two lines:
    // NSArray *emptyArray1 = @[];NSLog(@"%p", emptyArray1);
    // NSArray *emptyArray2 = @[];NSLog(@"%p", emptyArray2);
    //
    // therefore, the following three arrays must contain at least one object
    // in order to receive their own address in memory
    
    NSArray *arrayWithCustomProp1 = @[@"i'm a special snowflake"];
    NSArray *arrayWithCustomProp2 = @[@"i'm a special snowflake"];
    NSArray *arrayWithCustomProp3 = @[@"i'm a special snowflake"];
    
    arrayWithCustomProp1.customProperty = @"custom property 1";
    arrayWithCustomProp2.customProperty = @"custom property 2";
    arrayWithCustomProp3.customProperty = @"custom property 3";
    
    NSLog(@"-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/");
    NSLog(@"\n");
    NSLog(@"customProperty from first array: %@", arrayWithCustomProp1.customProperty);
    NSLog(@"customProperty from second array: %@", arrayWithCustomProp2.customProperty);
    NSLog(@"customProperty from third array: %@", arrayWithCustomProp3.customProperty);
    NSLog(@"\n");
    NSLog(@"-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/");
    
    return YES;
}


@end
