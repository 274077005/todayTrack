//
//  ThirdViewController.h
//  skyer
//
//  Created by odier on 2016/11/30.
//  Copyright © 2016年 skyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController
- (IBAction)btnAddRouteBook:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *labRemain;

@end
