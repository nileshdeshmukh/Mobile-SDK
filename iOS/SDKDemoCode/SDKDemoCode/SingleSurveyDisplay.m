//
//  SingleSurveyDisplay.m
//  SDKDemoCode
//
//  Created by survey on 18/04/14.
//  Copyright (c) 2014 survey. All rights reserved.
//

#import "SingleSurveyDisplay.h"
#import <SAUICatalog/SASurveyListView.h>

@interface SingleSurveyDisplay ()

@end

@implementation SingleSurveyDisplay
@synthesize singleSurveyView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // set No for translucent property of NavigationBar
    self.navigationController.navigationBar.translucent = NO;
    //   self.navigationController.navigationBarHidden=YES;
    [self loadSurveyforPanelMember];
}
//-(void)viewWillDisappear:(BOOL)animated{
//    self.navigationController.navigationBar.translucent = NO;
//    self.navigationController.navigationBarHidden=NO;
//    [super viewWillDisappear:animated];
//}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)loadSurveyforPanelMember
{
    // To set current controller for Root Observer of SDK callback events
    [self.singleSurveyView setRootViewController:self];
    [self.singleSurveyView setStrPanelApiKey:@"f927c3e6-2344-4f6c-84ac-ae3523d74065"];
    // To set Panel Nember - Replace with appropriate id
    [self.singleSurveyView setStrPanelMemberID:@"2103853"];
    [self.singleSurveyView setStrSurveyID:@"3153964"];  //  3145079  3153659
    [self.singleSurveyView setImgBackground:[UIImage imageNamed:@"blackGradient"]];
    
    // To set custom background color
    self.singleSurveyView.viewBackgroundColor = [UIColor clearColor];
    
    
    // To set NavigationBar Text Color
    self.singleSurveyView.navigationBarTextColor = [UIColor whiteColor];
    
    // To set NavigationBar Title Font style
    self.singleSurveyView.NavigationBarTitleFont = [UIFont systemFontOfSize:12];
    
    // To set Whether Sections has Info Branding button or not
    self.singleSurveyView.hasSectionScreenInfoButton = NO;
    
    // To set Whether sdk is populated with NavigationBar or not
    self.singleSurveyView.hasNavigationBar = YES;
    // To set Main SurveyList screen title
    self.singleSurveyView.navigationBarTitle = @"Survey Question";
    
    
      // To set NavigationBar Text Color
    self.singleSurveyView.navigationBarTextColor = [UIColor whiteColor];
    
    // To set NavigationBar Title Font style
    self.singleSurveyView.NavigationBarTitleFont = [UIFont systemFontOfSize:12];
    
//    // To set Main SurveyList screen title
//    self.singleSurveyView.navigationBarTitle = @"Demo App";
//    
    // To set Whether Sections has Info Branding button or not
    self.singleSurveyView.hasSectionScreenInfoButton = NO;
    
    // To set Whether sdk is populated with NavigationBar or not
    self.singleSurveyView.hasNavigationBar = YES;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 6.1)
    {
        // To set navigationBar background
//        self.singleSurveyView.imgNavigationBarBackground = [UIImage imageNamed:@"NavigationTopNew.png"];
//        
//        self.singleSurveyView.imgToolbarBackground=[UIImage imageNamed:@"NavigationTopNew.png"];

        self.singleSurveyView.colorSectionBackButtonBackground=[UIColor clearColor];
        self.singleSurveyView.colorSectionScreenHomeButtonBackground=[UIColor clearColor];
        self.singleSurveyView.colorSectionHomeButtonTitle=[UIColor whiteColor];
        self.singleSurveyView.colorSectionBackButtonTitle=[UIColor whiteColor];
        
        self.singleSurveyView.hasProgressView=YES;
        self.singleSurveyView.sectionScreenTrackTintColor = [UIColor grayColor];
        self.singleSurveyView.sectionScreenProgressTintColor = [UIColor blueColor];
        self.singleSurveyView.hasProgressView=YES;
        self.singleSurveyView.sectionScreenTrackTintColor = [UIColor grayColor];
        self.singleSurveyView.sectionScreenProgressTintColor = [UIColor blueColor];
        self.singleSurveyView.colorSectionHomeButtonTitle=[UIColor whiteColor];
        self.singleSurveyView.colorSectionBackButtonTitle=[UIColor whiteColor];
    }
 self.singleSurveyView.imgNavigationBarBackground = [UIImage imageNamed:@"SAUICatalog.bundle/iPhone/NavigationTop.png"];
    self.singleSurveyView.imgToolbarBackground=[UIImage imageNamed:@"SAUICatalog.bundle/iPhone/NavigationTop.png"];

    // To set whether Start Survey screen has statistics shown (Total Questions/Complete/Incomplete)
    self.singleSurveyView.hasStartSurveyScreenStatistics = YES;
    
    // To set whether Start Survey screen has Map rendered
    self.singleSurveyView.hasStartSurveyScreenMap = YES;
    
    // To set Frame of Map in Start Survey screen
    self.singleSurveyView.startSurveyScreenMapFrame = CGRectMake(3, 200, 314, 144);
    
    // To set Frame of Survey Title in Start Survey screen
    self.singleSurveyView.startSurveyScreenSurveyTitleFrame = CGRectMake(5, 45, 310, 35);
    
    // To set Font of Survey Title in Start Survey screen
    self.singleSurveyView.startSurveyScreenSurveyTitleFont =[UIFont fontWithName:@"Helvetica-Light" size:12.0f];
    
    // To set TextColor of Survey Title in Start Survey screen
    self.singleSurveyView.startSurveyScreenSurveyTitleTextColor = [UIColor blackColor];
    
    // To set whether Start Survey screen has toolbar or not
    self.singleSurveyView.hasStartSurveyScreenToolBar = NO;
    
    // To set Frame of Toolbar in Start Survey screen
  //  self.singleSurveyView.startSurveyScreenToolBarFrame  = CGRectMake(0, 460, 320, 44);
    
    // To set Background of Bottom Toolbar in various sections
   // self.singleSurveyView.imgToolbarBackground = [UIImage imageNamed:@"footer-bar"];
    // To set TextColor of Start Survey Button in Start Survey screen
    self.singleSurveyView.startSurveyScreenStartButtonTextColor = [UIColor colorWithRed:(0/255.0) green:(89/255.0) blue:(131/255.0) alpha:1] ;
    
    // To set BackgroundColor of Start Survey Button in Start Survey screen
    self.singleSurveyView.startSurveyScreenStartButtonBackgroundColor = [UIColor clearColor];
    

//    // To set TextColor of Start Survey Button in Start Survey screen
//    self.singleSurveyView.startSurveyScreenStartButtonTextColor = [UIColor redColor];
//    
//    // To set BackgroundColor of Start Survey Button in Start Survey screen
//    self.singleSurveyView.startSurveyScreenStartButtonBackgroundColor = [UIColor greenColor];
//    
//    
    // To set Frame of Start Survey Button in Start Survey screen
  //  self.singleSurveyView.startSurveyScreenStartButtonFrame = CGRectMake(91, 360, 137, 45);
    
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >6.1) {
        // To set Frame of Next Button in Question screen
        self.singleSurveyView.startSurveyScreenStartButtonFrame = CGRectMake(91, 360, 137, 45);
    }else{
        self.singleSurveyView.startSurveyScreenStartButtonFrame = CGRectMake(91, 370, 137, 45);
    }

    // To set Font of Start Survey Button in Start Survey screen
    self.singleSurveyView.startSurveyScreenStartButtonFont = [UIFont fontWithName:@"Helvetica-Bold" size:15.0f];
    
    // To set Background Image of Start Survey Button in Start Survey screen
    self.singleSurveyView.imgStartSurveyScreenStartButtonBackground = [UIImage imageNamed:@"blackGradient"];
    
    // To set Frame of Logo in Start Survey screen
    self.singleSurveyView.startSurveyScreenLogoFrame = CGRectMake(0, 0, 320, 44);
    
    // To set whether Logo is shown in Start Survey screen
    self.singleSurveyView.hasStartSurveyScreenLogo = YES;
    
    //--------------------------Next Button in Question screen Design Start From Here--------------------------//
    
    // To set TextColor of Next Button in Question screen
    self.singleSurveyView.sectionScreenNextButtonTextColor = [UIColor colorWithRed:(0/255.0) green:(89/255.0) blue:(131/255.0) alpha:1] ;
    
    // To set BackgroundColor of Next Button in Question screen
      self.singleSurveyView.sectionScreenNextButtonBackgroundColor = [UIColor clearColor];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >6.1) {
        // To set Frame of Next Button in Question screen
        self.singleSurveyView.sectionScreenNextButtonFrame = CGRectMake(0, 436, 320, 44);
    }else{
        self.singleSurveyView.sectionScreenNextButtonFrame = CGRectMake(100, 415, 120, 44);
    }
    // To set Font of Next Button in Question screen
    self.singleSurveyView.sectionScreenNextButtonFont = [UIFont fontWithName:@"Helvetica-Bold" size:15.0f];
    
    // To set Background Image of Next Button in Question screen
    //   self.singleSurveyView.imgSectionScreenNextButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    //--------------------------Next Button in Question screen Design End  Here--------------------------//
    
    //--------------------------DateTime Question's 'Choose Date' Button screen Design Start From  Here--------------------------//
    
    // To set TextColor of DateTime Question's 'Choose Date' Button
    self.singleSurveyView.sectionScreenChooseDateButtonTextColor = [UIColor redColor];
    
    // To set Font of DateTime Question's 'Choose Date' Button
    self.singleSurveyView.sectionScreenChooseDateButtonFont = [UIFont fontWithName:@"Gotham-Book" size:17.0f];
    
    // To set TextColor of DateTime Question's DatePicker
    // self.singleSurveyView.sectionScreenPickerTextColor = [UIColor redColor];
    
    
    
    // To set Whether Logo is shown in Section screen
    //  self.singleSurveyView.hasSectionScreenLogo = YES;
    
      // To set Background image for Home/close button in Section screen
    //self.singleSurveyView.imgSectionScreenHomeButtonBackground = [UIImage imageNamed:@"section_home"];
    
    
    
    // To set Single/Multi Select Question Radio/checkbox and placeholder background
    self.singleSurveyView.imgSectionSingleSelectPlaceHolder = [UIImage imageNamed:@"placeholder"];
    self.singleSurveyView.imgSectionSingleSelectRadio = [UIImage imageNamed:@"selected"];
    
    // To set Single/Multi Select Question Asset Frame
    self.singleSurveyView.sectionScreenSelectButtonFrame = CGRectMake(270, 14, 17, 17) ;
    
    // To set Single/Multi Select Question's Answer font & Color
    self.singleSurveyView.sectionScreenAnswerTextFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.singleSurveyView.sectionScreenAnswerTextColor = [UIColor blackColor];
    
    // To set Background for Back Button
  //  self.singleSurveyView.imgSectionBackButtonBackground = [UIImage imageNamed:@"back"];

    // To set Question Text Font
    self.singleSurveyView.sectionQuestionTextFont = [UIFont fontWithName:@"Gotham-Book" size:17];
    
    // To set Question Text Color
    self.singleSurveyView.sectionQuestionTextColor = [UIColor blackColor];//[UIColor colorWithRed:(11/255.0) green:(149/255.0) blue:(255/255.0) alpha:1];
    
    // To set Frame of Question
    self.singleSurveyView.sectionQuestionViewFrame = CGRectMake(10, 15, 275, 25);
    
    // To set Y Axis of Question ListView
    self.singleSurveyView.sectionListYAxis = 5;
    
    // To Set FreeForm Numeric Question BackSpace Image
    
    self.singleSurveyView.imgNumericBack = [UIImage imageNamed:@"BackBtnUp"];
    self.singleSurveyView.imgNumericBackPressed = [UIImage imageNamed:@""];
    
    // To Set FreeForm Numeric Question Decimal Image
    
    self.singleSurveyView.imgNumericDecimal = [UIImage imageNamed:@"DecBtnUp"];
    self.singleSurveyView.imgNumericDecimalPressed = [UIImage imageNamed:@""];
    
    // To Set FreeForm Numeric Question Done Image
    
    self.singleSurveyView.imgNumericDone = [UIImage imageNamed:@"DoneBtnBlue"];
    self.singleSurveyView.imgNumericDonePressed = [UIImage imageNamed:@""];
    
    
    // To set BarCode Section Scan Button
    self.singleSurveyView.scanText = @"Scan Me";
    self.singleSurveyView.sectionScreenScanButtonTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenScanButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.singleSurveyView.sectionScreenScanButtonFrame = CGRectMake(110, 350, 100, 37);
    self.singleSurveyView.imgSectionScreenScanButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    // To set Stop Watch Reset Button
    self.singleSurveyView.resetTimerText = @"Reset Me";
    self.singleSurveyView.sectionScreenStopWatchResetButtonTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenStopWatchResetButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.singleSurveyView.sectionScreenStopWatchResetButtonFrame = CGRectMake(200, 350, 100, 37);
    self.singleSurveyView.imgSectionScreenStopWatchResetButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    // To set Stop Watch Start Button
    self.singleSurveyView.startTimerText = @"Start Me";
    self.singleSurveyView.sectionScreenStopWatchStartButtonTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenStopWatchStartButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.singleSurveyView.sectionScreenStopWatchStartButtonFrame = CGRectMake(20, 350, 100, 37);
    self.singleSurveyView.imgSectionScreenStopWatchStartButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    
    // To set Stop Watch Stop Button
    self.singleSurveyView.stopTimerText = @"Stop Me";
    self.singleSurveyView.sectionScreenStopWatchStopButtonTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenStopWatchStopButtonFont = [UIFont fontWithName:@"Gotham-Book" size:14];
    self.singleSurveyView.imgSectionScreenStopWatchStopButtonBackground = [UIImage imageNamed:@"footer-bar"];
    
    // To set BarCode Question Heading & Separator
    self.singleSurveyView.barCodeHeadingText = @"BarCode Section Heading";
    self.singleSurveyView.sectionScreenBarCodeHeadingTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenBarCodeHeadingFont = [UIFont fontWithName:@"Arial" size:14];
    self.singleSurveyView.sectionScreenBarCodeHeadingFrame = CGRectMake(10, 5, 280, 16);
    self.singleSurveyView.sectionScreenBarCodeHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    self.singleSurveyView.imgSectionScreenBarCodeHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    // To set DateTime Question Heading & Separator
    self.singleSurveyView.dateTimeHeadingText = @"DateTime Section Heading";
    self.singleSurveyView.sectionScreenDateTimeHeadingTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenDateTimeHeadingFont = [UIFont fontWithName:@"Arial" size:12];
    self.singleSurveyView.sectionScreenDateTimeHeadingFrame = CGRectMake(10, 5, 280, 16);
    self.singleSurveyView.sectionScreenDateTimeHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    self.singleSurveyView.imgSectionScreenDateTimeHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    
    // To set Signature Question Heading & Separator
    self.singleSurveyView.signatureHeadingText = @"Signature Section Heading";
    self.singleSurveyView.sectionScreenSignatureHeadingTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenSignatureHeadingFont = [UIFont fontWithName:@"Arial" size:12];
    self.singleSurveyView.sectionScreenSignatureHeadingFrame = CGRectMake(10, 5, 280, 16);
    self.singleSurveyView.sectionScreenSignatureHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    self.singleSurveyView.imgSectionScreenSignatureHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    // To set Photo/Video Question Heading & Separator
    self.singleSurveyView.photoHeadingText = @"Photo Section Heading";
    self.singleSurveyView.photoSubHeadingLine1Text = @"Video Section SubHeading 1";
    self.singleSurveyView.photoSubHeadingLine2Text = @"Video Section SubHeading 2";
    
    self.singleSurveyView.sectionScreenPhotoVideoHeadingTextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenPhotoVideoHeadingFont = [UIFont fontWithName:@"Arial" size:14];
    self.singleSurveyView.sectionScreenPhotoVideoHeadingFrame = CGRectMake(10, 5, 280, 16);
    
    self.singleSurveyView.sectionScreenPhotoVideoHeadingSeparatorFrame = CGRectMake(10, 25, 276, 4);
    self.singleSurveyView.imgSectionScreenPhotoVideoHeadingSeparatorBackground = [UIImage imageNamed:@"Newseparator"];
    
    self.singleSurveyView.videoHeadingText = @"Video Section Heading";
    self.singleSurveyView.videoSubHeadingLine1Text = @"Video Section SubHeading 1";
    self.singleSurveyView.sectionScreenPhotoVideoSubHeadingLine1TextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenPhotoVideoSubHeadingLine1Font = [UIFont fontWithName:@"Arial" size:12];
    self.singleSurveyView.sectionScreenPhotoVideoSubHeadingLine1Frame = CGRectMake(10, 31, 270, 35);
    
    
    self.singleSurveyView.videoSubHeadingLine2Text = @"Video Section SubHeading 2";
    self.singleSurveyView.sectionScreenPhotoVideoSubHeadingLine2TextColor = [UIColor redColor];
    self.singleSurveyView.sectionScreenPhotoVideoSubHeadingLine2Font = [UIFont fontWithName:@"Arial" size:14];
    self.singleSurveyView.sectionScreenPhotoVideoSubHeadingLine2Frame = CGRectMake(10, 69, 270, 35);
    
    
    self.singleSurveyView.hasDateTimetableBorder=YES;
    self.singleSurveyView.hasMultichoiceTableBorder=YES;
    self.singleSurveyView.hasSingleChoiceTableBorder=YES;
    
    // To add Home Click event inside Survey
    [self.singleSurveyView setEventHomeClick:@selector(homeBtnClicked:)];
    
    // To set survey dismiss event
    [self.singleSurveyView setEventSurveyBackClick:@selector(surveyCompletionTriggered)];
    
    // To set Whether SDK exposes Start Survey Screen
    self.singleSurveyView.hasStartSurveyScreen = YES;
       // To download and Start specific Survey
    [self.singleSurveyView loadAndStartSurvey];
    
}
#pragma mark SDK Delegate Methods

-(void)surveyCompletionTriggered
{
    NSLog(@"surveyCompletionTriggered");
  
    //  [self dismissViewControllerAnimated:YES completion:nil];
      [self.view.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
      // [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark Section Home Button Event Handler

-(IBAction)homeBtnClicked:(id)sender
{
    NSLog(@"Home Button Clicked");
   [self.view.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
     //[self.navigationController popToRootViewControllerAnimated:YES];
}


-(IBAction)surveyDismissBtnClicked:(id)sender
{
    NSLog(@"Survey Dismiss Button Clicked");
    [self dismissViewControllerAnimated:YES completion:nil];
    //  [self.navigationController popToRootViewControllerAnimated:YES];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
