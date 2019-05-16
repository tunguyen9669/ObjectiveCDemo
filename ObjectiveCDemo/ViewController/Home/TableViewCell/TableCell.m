//
//  TableCell.m
//  ObjectiveCDemo
//
//  Created by admin on 5/16/19.
//  Copyright © 2019 com.dinhtu. All rights reserved.
//

#import "TableCell.h"
#import "JsonModel.h"

@implementation TableCell

- (void)awakeFromNib {
    [super awakeFromNib];
  
    [self initView];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) initView {
    [self btn].layer.borderWidth = 1.0;
    [self btn].layer.borderColor = UIColor.redColor.CGColor;
}
- (void)updateUI:(JsonModel *)model{
    [self titleLabel].text = model.title;
    [self idLabel].text = [model.userId stringValue];
    
}


- (IBAction)btnAction:(id)sender {
    
}
@end
