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
#import <JSONModel.h>
#import "Foundation/Foundation.h"

@interface JsonModel : JSONModel

@property (assign, nonatomic) int* id;
@property (assign, nonatomic) int* userId;
@property (assign, nonatomic) NSString* title;
@property (assign, nonatomic) NSString* body;

@end
