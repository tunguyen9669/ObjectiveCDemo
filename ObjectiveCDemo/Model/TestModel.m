//
//  TestModel.m
//  ObjectiveCDemo
//
//  Created by admin on 5/15/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceProvider.h"
#import <AFNetworking.h>

@implementation TestModel : NSObject

+ (void)function:(id)param withBlock:(void (^)(NSMutableDictionary *, NSError *))block {
  
    [[ServiceProvider shared] GET:@"https://jsonplaceholder.typicode.com/posts" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        if (block) {
            block(responseObject, nil);
        }
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        if (block) {
            block([NSArray array], error);
        }
    }];
}

@end
