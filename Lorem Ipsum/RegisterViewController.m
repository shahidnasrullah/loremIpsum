//
//  RegisterViewController.m
//  Lorem Ipsum
//
//  Created by Adil Soomro on 18/07/2013.
//  Copyright (c) 2013 Shahid Nasrullah. All rights reserved.
//

#import "RegisterViewController.h"
#import "HomeViewController.h"
#import "CreateNewViewController.h"
#import "ListViewController.h"
#import "TipsViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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

- (IBAction)registerClicked:(id)sender {
    UIViewController *homeController = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    UIViewController *createController = [[CreateNewViewController alloc] initWithNibName:@"CreateNewViewController" bundle:nil];
    UIViewController * listController = [[ListViewController alloc] initWithNibName:@"ListViewController" bundle:nil];
    UIViewController * tipsController = [[TipsViewController alloc] initWithNibName:@"TipsViewController" bundle:nil];
    self.tabController = [[UITabBarController alloc] init];
    self.tabController.viewControllers = @[homeController, createController, listController, tipsController];
    [self.navigationController pushViewController:self.tabController animated:YES];
}
@end
