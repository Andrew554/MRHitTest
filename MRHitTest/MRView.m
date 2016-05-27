//
//  MRView.m
//  MRHitTest 事件传递: UIApplication -> UIWindow hitText -> 子控件的hitTest方法
//
//  Created by SinObjectC on 16/5/27.
//  Copyright © 2016年 SinObjectC. All rights reserved.
//

#import "MRView.h"

@interface MRView ()

@property (nonatomic, weak) IBOutlet UIButton *btn;

@end

@implementation MRView

// 事件传递调用方法
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    // 当前坐标系上的点转换到按钮上的点
    CGPoint btnPoint = [self convertPoint:point toView:self.btn];
    
    // 判断点是否在按钮上
    if([self.btn pointInside:btnPoint withEvent:event])  {
        
        // 按钮处理点击
        return self.btn;
        
    }else { // 调用系统的做法, 继续访问子控件是否处理事件, 一定不要返回self
        
        return [super hitTest:point withEvent:event];
        
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"点击%@", [self class]);
    
    NSLog(@"%s", __func__);
}

- (IBAction)btnClick:(UIButton *)sender {

    NSLog(@"点击有本事点我噻");
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
