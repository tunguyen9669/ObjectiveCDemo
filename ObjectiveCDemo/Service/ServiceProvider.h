//
//  ServiceProvider.h
//  ObjectiveCDemo
//
//  Created by admin on 5/15/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#ifndef ServiceProvider_h
#define ServiceProvider_h


#endif /* ServiceProvider_h */
#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface ServiceProvider: NSObject
+ (ServiceProvider*) shared;
- (AFHTTPSessionManager*) manager;

@end
