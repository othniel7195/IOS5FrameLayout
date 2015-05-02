//
//  ViewController.m
//  FrameLayout
//
//  Created by 赵锋 on 15/5/2.
//  Copyright (c) 2015年 赵锋. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LayoutMethods.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    
    UILabel *firstLable=[[UILabel alloc] initWithFrame:CGRectZero];
    firstLable.backgroundColor=[UIColor redColor];
    [firstLable setHeight:21];
    [firstLable setWidth:80];
    firstLable.textAlignment=NSTextAlignmentCenter;
    firstLable.font=[UIFont systemFontOfSize:14.0];
    CGSize size=[[UIScreen mainScreen] bounds].size;
    NSLog(@"1==%f",size.width);
    firstLable.centerX=size.width/2.0;
    firstLable.centerY=100.0;
    firstLable.text=@"你大爷的!";
    
    [self.view addSubview:firstLable];
    
    
    UILabel *twoLable=[[UILabel alloc] initWithFrame:CGRectZero];
    twoLable.backgroundColor=[UIColor blueColor];
    twoLable.textAlignment=NSTextAlignmentCenter;
    twoLable.textColor=[UIColor whiteColor];
    twoLable.font=[UIFont systemFontOfSize:12.0];
    [twoLable sizeEqualToView:firstLable];
    //[twoLable left:-180.0 FromView:self.view];
    [twoLable bottom:-5.0 FromView:firstLable];
    [twoLable leftInContainer:80.0 shouldResize:YES];
    
    // [twoLable topEqualToView:firstLable];
    twoLable.text=@"才你大爷的!";
    
    [self.view addSubview:twoLable];
    
    
    UILabel *threeLabel=[[UILabel alloc] initWithFrame:CGRectZero];
    threeLabel.text=@"哈哈哈哈哈哈三大撒旦撒旦撒旦大撒旦撒大";
    threeLabel.font=[UIFont systemFontOfSize:13.0];
    threeLabel.backgroundColor=[UIColor yellowColor];
    
    
    [self.view addSubview:threeLabel];

}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    CGSize size=[[UIScreen mainScreen] bounds].size;
    NSLog(@"2==%f",size.width);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
