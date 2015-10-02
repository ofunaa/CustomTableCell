//
//  CustomTableViewCell.h
//  CustomTableCell
//
//  Created by takuji funao on 2015/10/02.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *numLabel;
@property (weak, nonatomic) IBOutlet UILabel *randLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;

+ (CGFloat)rowHeight;

@end
