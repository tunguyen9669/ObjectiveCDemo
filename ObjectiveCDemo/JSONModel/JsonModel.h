//
//  JsonModel.h
//  ObjectiveCDemo
//
//  Created by admin on 5/15/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#ifndef JsonModel_h
#define JsonModel_h


#endif /* JsonModel_h */
#import "Foundation/Foundation.h"
#import <JSONModel/JSONModel.h>

@interface JsonModel : JSONModel

@property (assign, nonatomic) NSNumber* id;
@property (assign, nonatomic) NSNumber* userId;
@property (copy, nonatomic) NSString* title;
@property (copy, nonatomic) NSString* body;

@end
