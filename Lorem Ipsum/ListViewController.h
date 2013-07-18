//
//  ListViewController.h
//  Lorem Ipsum
//
//  Created by Adil Soomro on 18/07/2013.
//  Copyright (c) 2013 Shahid Nasrullah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mTableView;

@end
