//
//  NSArray+AssociatedObjects.m
//  AssociatedObjects
//
//  Created by Kevin Favro on 9/18/16.
//  Copyright © 2016 Kevin Favro. All rights reserved.
//

#import "NSArray+AssociatedObjects.h"
#import <objc/runtime.h>

@implementation NSArray (AssociatedObjects)

@dynamic customProperty;

- (NSString *)customProperty
{
    return objc_getAssociatedObject(self, @selector(customProperty));
}

- (void)setCustomProperty:(NSString *)customProperty
{
    objc_setAssociatedObject(self, @selector(customProperty), customProperty, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
