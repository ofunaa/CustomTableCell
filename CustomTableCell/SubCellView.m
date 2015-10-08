//
//  SubCellView.m
//  CustomTableCell
//
//  Created by takuji funao on 2015/10/02.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "SubCellView.h"

@implementation SubCellView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        UINib *nib = [UINib nibWithNibName:@"SubCell" bundle:nil];
        
        self = [nib instantiateWithOwner:nil options:nil][0];
        
        self.frame = frame;
        
    }
    
    return self;
    
}

@end
