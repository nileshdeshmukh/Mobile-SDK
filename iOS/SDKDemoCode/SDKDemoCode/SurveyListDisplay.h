//
//  SurveyListDisplay.h
//  SDKDemoCode
//
//  Created by survey on 16/04/14.
//  Copyright (c) 2014 survey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SAUICatalog/SASurveyListView.h>

@interface SurveyListDisplay : UIViewController
{
SASurveyListView *_saView;
}
@property(nonatomic,retain) IBOutlet  SASurveyListView *saView;
-(void)loadSurveysForPanelMember;
-(IBAction)homeBtnClicked:(id)sender;
@end
