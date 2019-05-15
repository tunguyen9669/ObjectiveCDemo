//
//  ViewController.m
//  ObjectiveCDemo
//
//  Created by admin on 5/14/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#import "ViewController.h"
#import <JSONModel.h>
#import "TestModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];
//  [manager.requestSerializer setValue:@"Bear token" forHTTPHeaderField:@"Authorization"];
//    [manager GET:@"https://jsonplaceholder.typicode.com/posts" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(NSURLSessionTask *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    
    NSDictionary *param = nil;
    [TestModel function:param withBlock:^(NSMutableDictionary *array, NSError *error){
        if (!error) {
            if(array != nil){
                NSLog(@"Mang la: \n", array);
            }else {
                NSLog(@"Du lieu nil");
            }
        }
        else {
            // API Responce failure if content type is not a valid json or valid status code.
            NSLog(@"API fail");
        }
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
