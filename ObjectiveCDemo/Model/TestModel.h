//
//  TestModel.h
//  ObjectiveCDemo
//
//  Created by admin on 5/15/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#ifndef TestModel_h
#define TestModel_h


#endif /* TestModel_h */
#import <Foundation/Foundation.h>

@interface TestModel: NSObject

+ (void)function:(NSDictionary *) param withBlock:(void (^)(NSMutableDictionary *, NSError *))block;

@end
