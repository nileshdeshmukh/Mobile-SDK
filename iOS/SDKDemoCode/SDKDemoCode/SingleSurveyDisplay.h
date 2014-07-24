//
//  SingleSurveyDisplay.h
//  SDKDemoCode
//
//  Created by survey on 18/04/14.
//  Copyright (c) 2014 survey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SAUICatalog/SASurveyListView.h>

@interface SingleSurveyDisplay : UIViewController
{
    SASurveyListView *_singleSurveyView;
}
@property(nonatomic,retain) IBOutlet  SASurveyListView *singleSurveyView;
-(void)loadSurveyforPanelMember;

-(IBAction)homeBtnClicked:(id)sender;

-(IBAction)surveyDismissBtnClicked:(id)sender;
@end
