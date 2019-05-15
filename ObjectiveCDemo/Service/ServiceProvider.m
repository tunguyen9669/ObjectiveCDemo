//
//  ServiceProvider.m
//  ObjectiveCDemo
//
//  Created by admin on 5/15/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceProvider.h"
#import <AFNetworking.h>
@implementation ServiceProvider: NSObject

+ (id)shared {
    static ServiceProvider *shared = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shared = [self manager];
    });
    return shared;
}


+ (AFHTTPSessionManager *) manager {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    NSString *token = [@"Bearer " stringByAppendingString:@"token"];
    [manager.requestSerializer setValue:token forHTTPHeaderField:@"Authorization"];
    return manager;
}

@end
