//
//  ScrollViewController.m
//  CustomTableCell
//
//  Created by takuji funao on 2015/10/02.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ScrollViewController.h"
#import "SubCellView.h"

@interface ScrollViewController (){
    SubCellView *views[10];
    int width;
    int height;
}

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.scrollEnabled = YES;
    
    for (int i=0; i<10; i++) {
        
        views[i]=[[SubCellView alloc]initWithFrame:CGRectMake(0,20+i*140, self.view.bounds.size.width, 130)];
        
        NSDateFormatter *date_format = [[NSDateFormatter alloc] init];
        [date_format setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"ja_JP"]];
        [date_format setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
        NSDate *now = [NSDate date];
        NSString *Today = [date_format stringFromDate:now];
        views[i].dateLabel.text = Today;
        
        int numone = i + 1;
        NSString *num = [NSString stringWithFormat:@"%d", numone];
        views[i].numLabel.text = num;
        
        int rand = arc4random() % 100 + 1;
        NSString* randString = [NSString stringWithFormat:@"%d", rand];
        views[i].randLabel.text = randString;
        
        [self.scrollView addSubview:views[i]];
        
    }
    
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width,140*10);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
