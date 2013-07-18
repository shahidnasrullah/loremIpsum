//
//  RegisterViewController.h
//  Lorem Ipsum
//
//  Created by Adil Soomro on 18/07/2013.
//  Copyright (c) 2013 Shahid Nasrullah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtReEnterPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnRegister;
@property (nonatomic, retain) UITabBarController * tabController;
- (IBAction)registerClicked:(id)sender;

@end
