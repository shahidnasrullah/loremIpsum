//
//  TipsViewController.m
//  Lorem Ipsum
//
//  Created by Adil Soomro on 18/07/2013.
//  Copyright (c) 2013 Shahid Nasrullah. All rights reserved.
//

#import "TipsViewController.h"

@interface TipsViewController ()

@end

@implementation TipsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
