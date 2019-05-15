//
//  ViewController.m
//  ObjectiveCDemo
//
//  Created by admin on 5/14/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"
#import "JsonModel.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"earth"];
    [self.img setImage:image];
  
    NSDictionary *param = nil;
    NSMutableArray<JsonModel *> *courses = NSMutableArray.new;
    [TestModel function:param withBlock:^(NSMutableDictionary *array, NSError *error){
        if (!error) {
            if(array != nil){
                for (NSDictionary *dictionary in array) {
//
                    NSError *error;
                    JsonModel *value = [[JsonModel alloc] initWithDictionary:dictionary error:&error];
                    [courses addObject: value];
                    NSLog(@"Value: %d", [courses count]);
                    
                }
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
