//
//  ListViewController.m
//  Lorem Ipsum
//
//  Created by Adil Soomro on 18/07/2013.
//  Copyright (c) 2013 Shahid Nasrullah. All rights reserved.
//

#import "ListViewController.h"
#import "CompanyCell.h"
#import "DTCompany.h"

@interface ListViewController ()
@property (nonatomic, retain) NSMutableArray * dataArray;
@end

@implementation ListViewController

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
    _dataArray = [[NSMutableArray alloc] init];
    DTCompany * company = [[DTCompany alloc] init];
    company.companyName = @"Armani";
    company.price = @"$244";
    [_dataArray addObject:company];
    [_dataArray addObject:company];
    [_dataArray addObject:company];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate & Datasource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * identifier = @"cell";
    CompanyCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * nibsArray = [[NSBundle mainBundle] loadNibNamed:@"CompanyCell" owner:nil options:nil];
        cell = [nibsArray objectAtIndex:0];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dataArray count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
