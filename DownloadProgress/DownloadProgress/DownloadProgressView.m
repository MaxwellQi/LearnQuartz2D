//
//  DownloadProgressView.m
//  
//
//  Created by 张旗 on 8/27/16.
//
//

#import "DownloadProgressView.h"

@implementation DownloadProgressView


- (void)setProgress:(float)progress
{
    _progress = progress;
    
    // 重绘
    [self setNeedsDisplay];
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // 创建贝瑟尔路径
    CGFloat radius = rect.size.width * 0.5;
    CGPoint center = CGPointMake(radius, radius);
    
    CGFloat endA = -M_PI_2 + _progress * M_PI * 2;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius-10 startAngle:-M_PI_2 endAngle:endA clockwise:YES];
    [path stroke];
}


@end
