//
//  SecondViewController.m
//  skyer
//
//  Created by odier on 2016/11/30.
//  Copyright © 2016年 skyer. All rights reserved.
//

#import "SecondViewController.h"
#import "TodayTrackViewController.h"
#import "MyTrackViewController.h"
#import "QQStepViewController.h"
#import <SkyerTools.h>


@interface SecondViewController ()
@property(nonatomic ,strong) SkChildViews *skChildView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addScollPageView];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


-(void)addScollPageView{
    [self.navigationItem setTitleView:_segment];
    TodayTrackViewController *ttvc=[self.storyboard instantiateViewControllerWithIdentifier:@"TodayTrackViewController"];
    
    MyTrackViewController *mtvc=[self.storyboard instantiateViewControllerWithIdentifier:@"MyTrackViewController"];
    
    
    NSArray *arrView=[NSArray arrayWithObjects:ttvc,mtvc, nil];
    
    _skChildView=[[SkChildViews alloc] initWithChildViews:arrView andTag:self andOption:(UIViewAnimationOptionTransitionNone)];
    
    
}

- (IBAction)segmentAction:(UISegmentedControl *)sender {
    NSInteger btnTag=sender.selectedSegmentIndex;
    [_skChildView skChangVeiw:btnTag];
}

@end
