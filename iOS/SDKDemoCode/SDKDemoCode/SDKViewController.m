//
//  SDKViewController.m
//  SDKDemoCode
//
//  Created by survey on 16/04/14.
//  Copyright (c) 2014 survey. All rights reserved.
//

#import "SDKViewController.h"
#import "SurveyListDisplay.h"
#import "SingleSurveyDisplay.h"

@interface SDKViewController ()

@end

@implementation SDKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"SAUICatalog.bundle/iPhone/NavigationTop.png"] forBarMetrics:UIBarMetricsDefault];
}
#pragma mark TableView Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString* sSurveyRowCell = @"NavigationCell";
    
    // code to compile for pre-6.0
    UITableViewCell *cell = (UITableViewCell*)[tv dequeueReusableCellWithIdentifier:sSurveyRowCell];
    if (Nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:sSurveyRowCell];
    }
    
    cell.textLabel.textAlignment = NSTextAlignmentLeft;
    
    cell.tag = indexPath.row;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = indexPath.row == 0?@"Multi Survey List Mode":@"Single Survey Mode";
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    return cell;
}

// the table's selection has changed, switch to that item's UIViewController
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.table deselectRowAtIndexPath:indexPath animated:YES];
    if(indexPath.row == 0)
    {
        SurveyListDisplay *_surveyList = [[SurveyListDisplay alloc]initWithNibName:@"SurveyListDisplay" bundle:nil];
    //   [self.navigationController presentViewController:_singleSurveyController animated:YES completion:nil];
       [self presentViewController:_surveyList animated:YES completion:nil];
       //  [self.navigationController pushViewController:_surveyList animated:YES];
    }
    else if (indexPath.row == 1)
    {
        
        SingleSurveyDisplay *_singleSurveyController = [[SingleSurveyDisplay alloc]initWithNibName:@"SingleSurveyDisplay" bundle:nil];
        [self presentViewController:_singleSurveyController animated:YES completion:nil];
  //[self.navigationController pushViewController:_surveyListController animated:YES];
        //  [self.navigationController presentViewController:_surveyListController animated:YES completion:nil];
        //        
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
