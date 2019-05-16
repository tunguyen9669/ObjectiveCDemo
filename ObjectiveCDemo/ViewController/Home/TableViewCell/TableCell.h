//
//  TableCell.h
//  ObjectiveCDemo
//
//  Created by admin on 5/16/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JsonModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *idLabel;
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnAction:(id)sender;
- (void) updateUI: (JsonModel *) model;

@end

NS_ASSUME_NONNULL_END
