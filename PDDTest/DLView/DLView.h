//
//  DLView.h
//  PDDTest
//
//  Created by LYPC on 2019/12/1.
//  Copyright © 2019 LYPC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DLViewDataSource <NSObject>

@required
- (NSInteger)numberOfItems;

@required
- (NSArray *)titilOfItems;

@end

@protocol DLViewDelegate <NSObject>

@required
- (void)clickOfItems:(NSInteger)idx;

@end

@interface DLView : UIView

@property (nonatomic, weak) id <DLViewDataSource> dataSource;
@property (nonatomic, weak) id <DLViewDelegate> delegate;

- (void)setupUI;

@end

NS_ASSUME_NONNULL_END
