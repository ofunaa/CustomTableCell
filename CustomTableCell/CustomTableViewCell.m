//
//  CustomTableViewCell.m
//  CustomTableCell
//
//  Created by takuji funao on 2015/10/02.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (CGFloat)rowHeight{
    
    return 130.0f;

}

@end
