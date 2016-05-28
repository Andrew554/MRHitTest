//
//  MRHitTestView.m
//  MRHitTest
//
//  Created by SinObjectC on 16/5/28.
//  Copyright © 2016年 SinObjectC. All rights reserved.
//

#import "MRHitTestView.h"

@implementation MRHitTestView

// 自我实现hitTest底层方法
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {

    // 系统方法
    return [super hitTest:point withEvent:event];
    
/** 自己实现系统方法功能
 
    // 1.判断当前控件能否接受事件
    if(self.userInteractionEnabled == NO || self.hidden == YES || self.alpha <= 0.01) {
        
        return nil;
        
    }
    
    // 2.判断点在不在当前控件
    if([self pointInside:point withEvent:event] == NO) {
        
        return nil;
    }
    
    // 子控件个数
    int count = self.subviews.count;
    
    // 从后往前遍历(从窗口的最上面往最下面遍历), 找到最适合该事件的处理控件
    for (int i = count - 1; i >= 0; i--) {
        
        // 获取子控件
        UIView *subView = self.subviews[i];
        
        // 将当前控件上的坐标系转换成子控件上的坐标系
        CGPoint childPoint = [self convertPoint:point toView:subView];
        
        // 调用子控件上的hitTest方法寻找最合适的控件
        UIView *fitView = [subView hitTest:childPoint withEvent:event];
        
        if(fitView) {   // 寻找最合适的view
        
            // 适合, 则返回当前控件
            return subView;
        }
    }
    
    // 若遍历完之后还任然没有找到最合适处理时间的view, 则返回自己
    return self;
 */
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"%s", __func__);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
