//
//  ViewController.h
//  ObjectiveCDemo
//
//  Created by admin on 5/14/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JsonModel.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (copy, nonatomic) NSMutableArray<JsonModel *> *myArray;

@end

