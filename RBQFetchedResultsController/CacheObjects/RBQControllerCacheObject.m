//
//  RBQControllerCacheObject.m
//  RBQFetchedResultsControllerExample
//
//  Created by Adam Fish on 1/6/15.
//  Copyright (c) 2015 Roobiq. All rights reserved.
//

#import "RBQControllerCacheObject.h"

@implementation RBQControllerCacheObject

+ (instancetype)cacheWithName:(NSString *)name
             fetchRequestHash:(long long)hash
{
    RBQControllerCacheObject *cache = [[RBQControllerCacheObject alloc] init];
    cache.name = name;
    cache.fetchRequestHash = hash;
    
    return cache;
}

+ (NSString *)primaryKey
{
    return @"name";
}

+ (NSDictionary *)defaultPropertyValues
{
    return @{@"sectionNameKeyPath" : @"",
             @"state" : @(RBQControllerCacheStateReady)};
}

@end
