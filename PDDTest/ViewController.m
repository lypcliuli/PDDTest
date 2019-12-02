//
//  ViewController.m
//  PDDTest
//
//  Created by LYPC on 2019/12/2.
//  Copyright © 2019 LYPC. All rights reserved.
//

#import "ViewController.h"
#import "DLView.h"

@interface ViewController () <DLViewDataSource, DLViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DLView *dlView = [[DLView alloc] initWithFrame:CGRectMake(10, 150, 250, 250)];
    dlView.backgroundColor = [UIColor orangeColor];
    dlView.dataSource = self;
    dlView.delegate = self;
    [self.view addSubview:dlView];
    
    [dlView setupUI];
    // Do any additional setup after loading the view.
}

#pragma mark dataSource
- (NSInteger)numberOfItems {
    return 3;
}

- (NSArray *)titilOfItems {
    return @[@"一号", @"二号", @"三号"];
}

#pragma mark delegate
- (void)clickOfItems:(NSInteger)idx {
    NSLog(@"click： %@", @(idx));
}

@end
