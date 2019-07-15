//
//  FeedLoader.m
//  Demo
//
//  Created by bob on 2019/5/5.
//  Copyright © 2019 bob. All rights reserved.
//

#import "FeedLoader.h"
#import "FeedModel.h"
#import <UIKit/UIKit.h>

@implementation FeedLoader

+ (instancetype)defaultLoader {
    static FeedLoader *loader;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        loader = [self new];
    });

    return loader;
}

+ (NSArray<FeedModel *> *)loadDemoPageFeedList {
    NSMutableArray *array = [NSMutableArray array];

    [array addObject:({
        FeedModel *model = [FeedModel new];
        model.title = @"Demo";
        model.actionVCName = @"DemoViewController";
        model;
    })];

    return array;
}

@end
