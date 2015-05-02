//
//  contentView.m
//  FrameLayout
//
//  Created by 赵锋 on 15/5/2.
//  Copyright (c) 2015年 赵锋. All rights reserved.
//

#import "contentView.h"

#import "UIView+LayoutMethods.h"

@interface contentView ()<LayoutProtocol>

@end

@implementation contentView


-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    
    if (self) {
        
    }
    
    return self;
}


-(UIImageView *)flagImageView{
    
    if (!_flagImageView) {
        
        _flagImageView=[[UIImageView alloc] initWithFrame:CGRectZero];
        [_flagImageView setHeight:21.0];
        [_flagImageView setWidth:21.0];
        [_flagImageView setX:10.0];
        [_flagImageView setY:10.0];
        _flagImageView.backgroundColor=[UIColor yellowColor];
    }
    
    return _flagImageView;
}


-(UILabel *)clientNameLabel
{
    if (!_clientNameLabel) {
        _clientNameLabel=[[UILabel alloc] initWithFrame:CGRectZero];
        [_clientNameLabel setWidth:200.0];
        [_clientNameLabel left:5.0 FromView:self.flagImageView];
        
    }
    return _clientNameLabel;
}

-(UILabel *)firstFlagLabel
{
    if (!_firstFlagLabel) {
        _firstFlagLabel=[[UILabel alloc] initWithFrame:CGRectZero];
        _firstFlagLabel.text=@"医院等级:";
        _firstFlagLabel.font=[UIFont systemFontOfSize:14.0];
        _firstFlagLabel.height=21.0;
        _firstFlagLabel.width=80.0;
    }
    
    return _firstFlagLabel;
}


///
-(void)calculateLayout
{
    
}

@end
