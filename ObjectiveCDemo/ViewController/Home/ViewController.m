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
#import "TableCell.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImage *image = [UIImage imageNamed:@"earth"];
//    [self.img setImage:image];
//    [self.indi startAnimating];
    
    [self getData];
    _myArray = [[NSMutableArray<JsonModel *> alloc] init];
   
    
  
   
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) getData {
    NSDictionary *param = nil;
   
    NSMutableArray<JsonModel *> *courses = NSMutableArray.new;
    [TestModel function:param withBlock:^(NSMutableDictionary *array, NSError *error){
        if (!error) {
            if(array != nil){
                //                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
                //                    [self.indi stopAnimating];
                //                    _indi.hidden = YES;
                //                });
                for (NSDictionary *dictionary in array) {
                    //
                    NSError *error;
                    JsonModel *value = [[JsonModel alloc] initWithDictionary:dictionary error:&error];
                    [[self myArray] addObject: value];
                    
                }
               
                [[self tableView] reloadData];
            }else {
                NSLog(@"Du lieu nil");
            }
        }
        else {
            // API Responce failure if content type is not a valid json or valid status code.
            NSLog(@"API fail");
        }
    }];
}


#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [self myArray].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"TableCell";
    
    TableCell *cell = (TableCell*) [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
 
    [cell updateUI: _myArray[indexPath.row]];
    
    return cell;
    
}



@end
