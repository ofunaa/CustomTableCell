//
//  ViewController.m
//  CustomTableCell
//
//  Created by takuji funao on 2015/10/02.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController (){
    int list;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    list = 10;
    
    UINib *nib = [UINib nibWithNibName: @"CustomCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"Cell"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return list;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
     
    static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    // dateLabel
    NSDate *now = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger flags;
    NSDateComponents *comps;
    flags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    comps = [calendar components:flags fromDate:now];
    NSInteger year = comps.year;
    NSInteger month = comps.month;
    NSInteger day = comps.day;
    NSString* date = [NSString stringWithFormat:@"%ld年 %ld月 %ld日", year, month, day];
    cell.dateLabel.text = date;
    
    
    // numLabel
    NSString *number = [NSString stringWithFormat:@"No. %ld", (long)indexPath.row+1];
    cell.numLabel.text = number;
    
    
    // randLabel
    int n = arc4random() % 100 + 1;
    NSString* rand = [NSString stringWithFormat:@"乱数: %d", n];
    cell.randLabel.text = rand;
    
    
    return cell;
    
    
}

@end
