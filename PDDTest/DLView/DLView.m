//
//  DLView.m
//  PDDTest
//
//  Created by LYPC on 2019/12/1.
//  Copyright © 2019 LYPC. All rights reserved.
//

#import "DLView.h"

@implementation DLView

- (void)setupUI {
    NSInteger count = 0;
    if (self.dataSource && [self.dataSource respondsToSelector:@selector(numberOfItems)]) {
        count = [self.dataSource numberOfItems];
    }
    NSArray *titles = @[];
    if (self.dataSource && [self.dataSource respondsToSelector:@selector(titilOfItems)]) {
        titles = [self.dataSource titilOfItems];
    }
    for (int i=0; i<count; i++) { // 250
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setFrame:CGRectMake(10+i*(50+5), 100, 50, 44)];
        [button setBackgroundColor:[UIColor blackColor]];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setTitle:titles[i] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:15];
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        [button addTarget:self action:@selector(clickItem:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }
    
}

- (void)clickItem:(NSInteger)idx {
    if (self.delegate && [self.delegate respondsToSelector:@selector(clickOfItems:)]) {
        [self.delegate clickOfItems:idx];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
