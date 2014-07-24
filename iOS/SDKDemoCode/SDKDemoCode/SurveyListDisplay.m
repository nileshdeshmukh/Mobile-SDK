//
//  SurveyListDisplay.m
//  SDKDemoCode
//
//  Created by survey on 16/04/14.
//  Copyright (c) 2014 survey. All rights reserved.
//

#import "SurveyListDisplay.h"
#import <SAUICatalog/SASurveyListView.h>

@interface SurveyListDisplay ()

@end

@implementation SurveyListDisplay
@synthesize saView=_saView;

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
   
     self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Cancel" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setFrame:CGRectMake(0.0f, 0.0f, 60.0f, 35.0f)];
    [button addTarget:self action:@selector(backToHome) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *customBarItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.saView.leftBarButtonItem = customBarItem;
}
-(void)backToHome{
    [self.view.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    [self loadSurveysForPanelMember];
}
-(void)loadSurveysForPanelMember
{
    // To set current controller for Root Observer of SDK callback events
    [self.saView setRootViewController:self];
       [self.saView setStrPanelApiKey:@"929fdb1d-b877-4a72-b4a9-00480ec151b3"];
    // To set Panel Nember - Replace with appropriate id
    [self.saView setStrPanelMemberID:@"2048923"];
    
    // To set Survey ID  - Replace with appropriate id
    [self.saView setStrSurveyID:@""];
    
    
    // To set custom background Image
    // [self.saView setImgBackground:[UIImage imageNamed:@"blackGradient"]];
    
    // To set custom background color
    self.saView.viewBackgroundColor = [UIColor whiteColor];
    
    // To set NavigationBar Text Color
    self.saView.navigationBarTextColor = [UIColor blackColor];
    
    // To set NavigationBar Title Font style
    self.saView.NavigationBarTitleFont = [UIFont systemFontOfSize:12];
    
    // To set Main SurveyList screen title
    self.saView.navigationBarTitle = @"Demo App";
    
    // To set Whether Sections has Info Branding button or not
    self.saView.hasSectionScreenInfoButton = NO;
    
    
    // To set Whether sdk is populated with NavigationBar or not
    self.saView.hasNavigationBar = YES;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 6.1) {
        self.saView.hasSectionToolBar=YES;
        // To set Frame of Toolbar in Start Survey screen
       self.saView.startSurveyScreenToolBarFrame  = CGRectMake(0, 460, 320, 44);
        // To set navigationBar background
        self.saView.imgNavigationBarBackground = [UIImage imageNamed:@"NavigationTopNew.png"];
        
        
        self.saView.colorSectionBackButtonBackground=[UIColor clearColor];
        self.saView.colorSectionScreenHomeButtonBackground=[UIColor clearColor];
        self.saView.colorSectionHomeButtonTitle=[UIColor blueColor];
        self.saView.colorSectionBackButtonTitle=[UIColor blueColor];

        // To set NavigationBar tint color
        // self.saView.navigationBarTintColor = [UIColor clearColor];

        // To set Background for Back Button
  //   self.saView.imgSectionBackButtonBackground = [UIImage imageNamed:@"back"];
        // To set Background image for Home/close button in Section screen
 //      self.saView.imgSectionScreenHomeButtonBackground = [UIImage imageNamed:@"section_home"];
    }
    else
    {
        // To set ProgressBar Tint and Track colors
        self.saView.hasProgressView=YES;
        self.saView.sectionScreenTrackTintColor = [UIColor clearColor];
        self.saView.sectionScreenProgressTintColor = [UIColor clearColor];
        
      
        // To set navigationBar background
        self.saView.imgNavigationBarBackground = [UIImage imageNamed:@"NavigationTop"];
        
        // To set NavigationBar tint color
        // self.saView.navigationBarTintColor = [UIColor clearColor];

        
        self.saView.hasSectionToolBar=YES;
        self.saView.toolBarTintColor=[UIColor yellowColor];
//  self.saView.imgSectionBackButtonBackground = [UIImage imageNamed:@"back"];
// To set Background image for Home/close button in Section screen
//self.saView.imgSectionScreenHomeButtonBackground = [UIImage imageNamed:@"section_home"];
 //   self.saView.colorSectionBackButtonBackground=[UIColor redColor];
  //    self.saView.colorSectionScreenHomeButtonBackground=[UIColor redColor];
        self.saView.colorSectionHomeButtonTitle=[UIColor whiteColor];
        self.saView.colorSectionBackButtonTitle=[UIColor whiteColor];
        // self.saView.sectionScreenToolBarFrame= CGRectMake(50, 436, 220, 44);
        self.saView.startSurveyScreenToolBarFrame=CGRectMake(50, 436, 220, 44);
    }
    
    // To set TextColor of Survey Title in Start Survey screen
    self.saView.startSurveyScreenSurveyTitleTextColor = [UIColor blueColor];
    // To set whether Start Survey screen has toolbar or not
    self.saView.hasStartSurveyScreenToolBar = YES;
    
       // To set Background of Bottom Toolbar in various sections
        //  self.saView.imgToolbarBackground = [UIImage imageNamed:@"footer-bar"];
    
        // To set whether Start Survey screen has statistics shown (Total Questions/Complete/Incomplete)
    self.saView.hasStartSurveyScreenStatistics = YES;
    
    // To set whether Start Survey screen has Map rendered
    self.saView.hasStartSurveyScreenMap = YES;
    
    // To set Frame of Map in Start Survey screen
    self.saView.startSurveyScreenMapFrame = CGRectMake(3, 200, 314, 144);
    
    // To set Frame of Survey Title in Start Survey screen
    self.saView.startSurveyScreenSurveyTitleFrame = CGRectMake(5, 45, 310, 35);
    
    // To set Font of Survey Title in Start Survey screen
    self.saView.startSurveyScreenSurveyTitleFont = [UIFont fontWithName:@"Helvetica-Bold" size:13.0f];
    
//    // To set TextColor of Survey Title in Start Survey screen
//    self.saView.startSurveyScreenSurveyTitleTextColor = [UIColor whiteColor];
    
  // self.saView.sectionBackButtonBackgroundColor=[UIColor greenColor];
    
    // To set TextColor of Start Survey Button in Start Survey screen
    self.saView.startSurveyScreenStartButtonTextColor = [UIColor redColor];
    
    // To set BackgroundColor of Start Survey Button in Start Survey screen
    self.saView.startSurveyScreenStartButtonBackgroundColor = [UIColor clearColor];

    // To set Frame of Start Survey Button in Start Survey screen
   

    if ([[[UIDevice currentDevice] systemVersion] floatValue] >6.1) {
        // To set Frame of Next Button in Question screen
        self.saView.startSurveyScreenStartButtonFrame = CGRectMake(91, 360, 137, 45);
    }else{
         self.saView.startSurveyScreenStartButtonFrame = CGRectMake(91, 370, 137, 45);
    }

    // To set Font of Start Survey Button in Start Survey screen
    self.saView.startSurveyScreenStartButtonFont = [UIFont fontWithName:@"Helvetica-Bold" size:15.0f];
    
    // To set Background Image of Start Survey Button in Start Survey screen
    self.saView.imgStartSurveyScreenStartButtonBackground = [UIImage imageNamed:@"blackGradient"];
    
//   self.saView.sectionBackButtonBackgroundColor=[UIColor yellowColor];
    // To set Frame of Logo in Start Survey screen
    self.saView.startSurveyScreenLogoFrame = CGRectMake(0, 0, 320, 44);
    
    // To set whether Logo is shown in Start Survey screen
    self.saView.hasStartSurveyScreenLogo = YES;
    
    // To set TextColor of Next Button in Question screen
   // self.saView.sectionScreenNextButtonTextColor = [UIColor grayColor];
    
    // To set BackgroundColor of Next Button in Question screen
    self.saView.sectionScreenNextButtonBackgroundColor = [UIColor clearColor];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >6.1) {
        // To set Frame of Next Button in Question screen
        self.saView.sectionScreenNextButtonFrame = CGRectMake(0, 436, 320, 44);
    }else{
        self.saView.sectionScreenNextButtonFrame = CGRectMake(100, 415, 120, 44);
    }
    // To set Font of Next Button in Question screen
    self.saView.sectionScreenNextButtonFont = [UIFont fontWithName:@"Helvetica-Bold" size:15.0f];
    self.saView.sectionScreenNextButtonTextColor=[UIColor blueColor];
    
    // To set Background Image of Next Button in Question screen
    //  self.saView.imgSectionScreenNextButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    // To set TextColor of DateTime Question's 'Choose Date' Button
    self.saView.sectionScreenChooseDateButtonTextColor = [UIColor redColor];
    
    // To set Font of DateTime Question's 'Choose Date' Button
    self.saView.sectionScreenChooseDateButtonFont = [UIFont fontWithName:@"Gotham-Book" size:17.0f];
    
    // To set TextColor of DateTime Question's DatePicker
    self.saView.sectionScreenPickerTextColor = [UIColor redColor];
    
    // To set Whether Logo is shown in Section screen
    self.saView.hasSectionScreenLogo = YES;
    
       // To set Single/Multi Select Question Radio/checkbox and placeholder background
    self.saView.imgSectionSingleSelectPlaceHolder = [UIImage imageNamed:@"placeholder"];
    self.saView.imgSectionSingleSelectRadio = [UIImage imageNamed:@"selected"];
    
    // To set Single/Multi Select Question Asset Frame
    self.saView.sectionScreenSelectButtonFrame = CGRectMake(270, 14, 17, 17) ;
    
    // To set Single/Multi Select Question's Answer font & Color
    self.saView.sectionScreenAnswerTextFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.saView.sectionScreenAnswerTextColor = [UIColor brownColor];
    
      // To set Question Text Font
    self.saView.sectionQuestionTextFont = [UIFont fontWithName:@"Gotham-Book" size:17];
    
    // To set Question Text Color
    self.saView.sectionQuestionTextColor = [UIColor colorWithRed:(11/255.0) green:(149/255.0) blue:(255/255.0) alpha:1];
    
    // To set Frame of Question
    self.saView.sectionQuestionViewFrame = CGRectMake(10, 15, 275, 25);
   
    // To set Y Axis of Question ListView
    self.saView.sectionListYAxis = 5;
    
    // To Set FreeForm Numeric Question BackSpace Image
    
    self.saView.imgNumericBack = [UIImage imageNamed:@"BackBtnUp"];
    self.saView.imgNumericBackPressed = [UIImage imageNamed:@""];
    
    // To Set FreeForm Numeric Question Decimal Image
    
    self.saView.imgNumericDecimal = [UIImage imageNamed:@"DecBtnUp"];
    self.saView.imgNumericDecimalPressed = [UIImage imageNamed:@""];
    
    // To Set FreeForm Numeric Question Done Image
    
    self.saView.imgNumericDone = [UIImage imageNamed:@"DoneBtnBlue"];
    self.saView.imgNumericDonePressed = [UIImage imageNamed:@""];
    
    
    // To set BarCode Section Scan Button
    self.saView.scanText = @"Scan Me";
    self.saView.sectionScreenScanButtonTextColor = [UIColor redColor];
    self.saView.sectionScreenScanButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.saView.sectionScreenScanButtonFrame = CGRectMake(110, 350, 100, 37);
    self.saView.imgSectionScreenScanButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    // To set Stop Watch Reset Button
    self.saView.resetTimerText = @"Reset Me";
    self.saView.sectionScreenStopWatchResetButtonTextColor = [UIColor redColor];
    self.saView.sectionScreenStopWatchResetButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.saView.sectionScreenStopWatchResetButtonFrame = CGRectMake(200, 350, 100, 37);
    self.saView.imgSectionScreenStopWatchResetButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    // To set Stop Watch Start Button
    self.saView.startTimerText = @"Start Me";
    self.saView.sectionScreenStopWatchStartButtonTextColor = [UIColor redColor];
    self.saView.sectionScreenStopWatchStartButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.saView.sectionScreenStopWatchStartButtonFrame = CGRectMake(20, 350, 100, 37);
    self.saView.imgSectionScreenStopWatchStartButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    
    // To set Stop Watch Stop Button
    self.saView.stopTimerText = @"Stop Me";
    self.saView.sectionScreenStopWatchStopButtonTextColor = [UIColor redColor];
    self.saView.sectionScreenStopWatchStopButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.saView.imgSectionScreenStopWatchStopButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    // To set BarCode Question Heading & Separator
    self.saView.barCodeHeadingText = @"BarCode Section Heading";
    self.saView.sectionScreenBarCodeHeadingTextColor = [UIColor redColor];
    self.saView.sectionScreenBarCodeHeadingFont = [UIFont fontWithName:@"Arial" size:14];
    self.saView.sectionScreenBarCodeHeadingFrame = CGRectMake(10, 5, 280, 16);
    self.saView.sectionScreenBarCodeHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    self.saView.imgSectionScreenBarCodeHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    // To set DateTime Question Heading & Separator
    self.saView.dateTimeHeadingText = @"DateTime Heading";
    self.saView.lblHeaderTextAlignment=NSTextAlignmentLeft;
    self.saView.sectionScreenDateTimeHeadingTextColor = [UIColor redColor];
    self.saView.sectionScreenDateTimeHeadingFont = [UIFont fontWithName:@"Arial" size:12];
    self.saView.sectionScreenDateTimeHeadingFrame = CGRectMake(10, 5, 280, 16);
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 6.1) {
        self.saView.sectionScreenDateTimeHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    }else{
        self.saView.sectionScreenDateTimeHeadingSeparatorFrame = CGRectMake(4, 25, 272, 4);
    }
    self.saView.imgSectionScreenDateTimeHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    
    // To set Signature Question Heading & Separator
    self.saView.signatureHeadingText = @"Signature Section Heading";
    self.saView.sectionScreenSignatureHeadingTextColor = [UIColor redColor];
    self.saView.sectionScreenSignatureHeadingFont = [UIFont fontWithName:@"Arial" size:12];
    self.saView.sectionScreenSignatureHeadingFrame = CGRectMake(10, 5, 280, 16);
    self.saView.sectionScreenSignatureHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    self.saView.imgSectionScreenSignatureHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    // To set Photo/Video Question Heading & Separator
    self.saView.photoHeadingText = @"Photo Section Heading";
    self.saView.photoSubHeadingLine1Text = @"Video Section SubHeading 1";
    self.saView.photoSubHeadingLine2Text = @"Video Section SubHeading 2";
    
    self.saView.sectionScreenPhotoVideoHeadingTextColor = [UIColor redColor];
    self.saView.sectionScreenPhotoVideoHeadingFont = [UIFont fontWithName:@"Arial" size:14];
    self.saView.sectionScreenPhotoVideoHeadingFrame = CGRectMake(10, 5, 280, 16);
    
    self.saView.sectionScreenPhotoVideoHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    self.saView.imgSectionScreenPhotoVideoHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    self.saView.videoHeadingText = @"Video Section Heading";
    self.saView.videoSubHeadingLine1Text = @"Video Section SubHeading 1";
    self.saView.sectionScreenPhotoVideoSubHeadingLine1TextColor = [UIColor redColor];
    self.saView.sectionScreenPhotoVideoSubHeadingLine1Font = [UIFont fontWithName:@"Arial" size:12];
    self.saView.sectionScreenPhotoVideoSubHeadingLine1Frame = CGRectMake(10, 31, 270, 35);
    
    
    self.saView.videoSubHeadingLine2Text = @"Video Section SubHeading 2";
    self.saView.sectionScreenPhotoVideoSubHeadingLine2TextColor = [UIColor redColor];
    self.saView.sectionScreenPhotoVideoSubHeadingLine2Font = [UIFont fontWithName:@"Arial" size:14];
    self.saView.sectionScreenPhotoVideoSubHeadingLine2Frame = CGRectMake(10, 69, 270, 35);
    
   if ([[[UIDevice currentDevice] systemVersion] floatValue] > 6.1) {
        self.saView.sectionScreenBarCodeHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
   }else{
      self.saView.sectionScreenBarCodeHeadingSeparatorFrame = CGRectMake(4, 25, 272, 4);
    }
    self.saView.imgSectionScreenBarCodeHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    

    
    self.saView.hasDateTimetableBorder=YES;
 //   self.saView.hasMultichoiceTableBorder=NO;
    
    
    self.saView.hasMultichoiceTableBorder=YES;
 //   self.saView.colorMultiChoiceTableBg=[UIColor clearColor];
    
    self.saView.hasMultichoiceTableBorder=YES;
  //  self.saView.colorMultiChoiceTableBg=[UIColor clearColor];
    
    self.saView.hasSingleChoiceTableBorder=YES;
   // self.saView.colorSingleChoiceTableBg=[UIColor clearColor];
    
    self.saView.hasImageChooserMultipleChoiceTableBorder=YES;
  //  self.saView.colorImageChooserMultipleChoiceTableBg=[UIColor clearColor];
    
    self.saView.hasImageChooserSingleChoiceTableBorder=YES;
   // self.saView.colorImageChooserSingleChoiceTableBg=[UIColor clearColor];
    

    
    // To add Home Click event inside Survey
    [self.saView setEventHomeClick:@selector(homeBtnClicked:)];
    
    // To set survey dismiss event
    [self.saView setEventSurveyBackClick:@selector(surveyDismissBtnClicked:)];
    
    // To set Whether SDK exposes Start Survey Screen
    self.saView.hasStartSurveyScreen = NO;
    
    [self.saView loadSurveys];
    
}
#pragma mark SDK Delegate Methods

-(void)surveyCompletionTriggered
{
    NSLog(@"surveyCompletionTriggered");
    
}
-(IBAction)surveyDismissBtnClicked:(id)sender
{
    NSLog(@"Survey Dismiss Button Clicked");
    // [self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
#pragma mark Section Home Button Event Handler

-(IBAction)homeBtnClicked:(id)sender
{
    NSLog(@"Home Button Clicked");
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
