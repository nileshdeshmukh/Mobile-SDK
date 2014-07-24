#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@protocol SASurveyServiceDelegate<NSObject>

@optional

-(IBAction)leftBarButtonClicked:(id)sender;
-(IBAction)rightBarButtonClicked:(id)sender;
-(IBAction)infoBarButtonClicked:(id)sender;
-(void)surveyCompletionTriggered;

@end


@interface SASurveyListView : UIView
{
    UIViewController *_rootViewController;
    NSString *_strPanelMemberID;
    NSString *_strSurveyID;
    NSString *_strUserID;
    NSString *_strPanelApiKey;
    UIBarButtonItem *_leftBarButtonItem;
    UIBarButtonItem *_rightBarButtonItem;
    UIBarButtonItem *_infoBarButtonItem;
    NSString *_navigationBarTitle;
    
    // Theme Elements
    UIImage *_imgBackground;
    UIImage *_imgToolbarBackground,*_imgNavigationBarBackground;
    UIFont *_NavigationBarTitleFont;
    UIColor *_viewBackgroundColor,*_navigationBarTintColor,*_navigationBarTextColor,*_toolBarTintColor;
    
    Boolean _hasNavigationBar;
    Boolean _hasSectionToolBar;
    Boolean _hasStartSurveyScreen;
    Boolean _hasProgressView;
    
    // Start Survey Screen Customization
    Boolean _hasStartSurveyScreenToolBar;
    CGRect _startSurveyScreenToolBarFrame;
    
    Boolean _hasStartSurveyScreenLogo;
    CGRect _startSurveyScreenLogoFrame;
    
    UIColor *_startSurveyScreenStartButtonTextColor;
    UIFont *_startSurveyScreenStartButtonFont;
    CGRect _startSurveyScreenStartButtonFrame;
    UIColor *_startSurveyScreenStartButtonBackgroundColor;
    UIImage *_imgStartSurveyScreenStartButtonBackground;
    
    Boolean _hasStartSurveyScreenMap;
    CGRect _startSurveyScreenMapFrame;
    
    UIFont *_startSurveyScreenSurveyTitleFont;
    UIColor *_startSurveyScreenSurveyTitleTextColor;
    CGRect _startSurveyScreenSurveyTitleFrame;
    
    Boolean _hasStartSurveyScreenStatistics;
    
    // Section Screen Customization
    Boolean _hasSectionScreenLogo;
    Boolean _hasSectionScreenInfoButton;
    CGRect _sectionScreenToolBarFrame;

    UIColor *_colorSectionBackButtonTitle;
    UIColor *_colorSectionHomeButtonTitle;
    NSString *_strSectionBackButtonTitle;
    NSString *_strSectionHomeButtonTitle;
    
    
    
    UIColor *_sectionScreenNextButtonTextColor;
    UIFont *_sectionScreenNextButtonFont;
    CGRect _sectionScreenNextButtonFrame;
    UIColor *_sectionScreenNextButtonBackgroundColor;
    UIImage *_imgSectionScreenNextButtonBackground;
    
    UIColor *_sectionScreenScanButtonTextColor;
    UIFont *_sectionScreenScanButtonFont;
    CGRect _sectionScreenScanButtonFrame;
    UIImage *_imgSectionScreenScanButtonBackground;
    NSString *_scanText;

    UIColor *_sectionScreenStopWatchStartButtonTextColor;
    UIFont *_sectionScreenStopWatchStartButtonFont;
    CGRect _sectionScreenStopWatchStartButtonFrame;
    UIImage *_imgSectionScreenStopWatchStartButtonBackground;
    NSString *_startTimerText;

    UIColor *_sectionScreenStopWatchStopButtonTextColor;
    UIFont *_sectionScreenStopWatchStopButtonFont;
  //  CGRect _sectionScreenStopWatchStopButtonFrame;
    UIImage *_imgSectionScreenStopWatchStopButtonBackground;
    NSString *_stopTimerText;
    
    UIColor *_sectionScreenStopWatchResetButtonTextColor;
    UIFont *_sectionScreenStopWatchResetButtonFont;
    CGRect _sectionScreenStopWatchResetButtonFrame;
    UIImage *_imgSectionScreenStopWatchResetButtonBackground;
    NSString *_resetTimerText;
    
    
    UIColor *_sectionScreenChooseDateButtonTextColor;
    UIFont *_sectionScreenChooseDateButtonFont;
    UIColor *_sectionScreenPickerTextColor;
    
    UIColor *_sectionScreenProgressTintColor;
    UIColor *_sectionScreenTrackTintColor;
    UIImage *_imgSectionScreenHomeButtonBackground;
    UIColor *_colorSectionScreenHomeButtonBackground;
    UIImage *_imgSectionSingleSelectRadio;
    UIImage *_imgSectionSingleSelectPlaceHolder;
    UIImage *_imgSectionMultiSelectCheck;
    UIImage *_imgSectionMultiSelectPlaceHolder;
    CGRect _sectionScreenSelectButtonFrame;
    UIFont *_sectionScreenAnswerTextFont;
    UIColor *_sectionScreenAnswerTextColor;
    
    UIImage *_imgSectionBackButtonBackground;
    UIColor *_colorSectionBackButtonBackground;
    NSString *_backText;
    CGFloat _sectionListYAxis;
    
    UIImage *_imgNumericBack,*_imgNumericBackPressed;
    UIImage *_imgNumericDecimal,*_imgNumericDecimalPressed;
    UIImage *_imgNumericDone,*_imgNumericDonePressed;

    UIColor *_sectionScreenDateTimeHeadingTextColor;
    UIFont *_sectionScreenDateTimeHeadingFont;
    CGRect _sectionScreenDateTimeHeadingFrame;
    NSString *_dateTimeHeadingText;
    NSTextAlignment _lblHeaderTextAlignment;
    BOOL _hasDateTimetableBorder;
    UIColor *_colorDateTimeTableBg;
    
    CGRect _sectionScreenDateTimeHeadingSeparatorFrame;
    UIImage *_imgSectionScreenDateTimeHeadingSeparatorBackground;
    
    
    UIColor *_sectionScreenBarCodeHeadingTextColor;
    UIFont *_sectionScreenBarCodeHeadingFont;
    CGRect _sectionScreenBarCodeHeadingFrame;
    NSString *_barCodeHeadingText;
    
    CGRect _sectionScreenBarCodeHeadingSeparatorFrame;
    UIImage *_imgSectionScreenBarCodeHeadingSeparatorBackground;
    
    UIColor *_sectionScreenSignatureHeadingTextColor;
    UIFont *_sectionScreenSignatureHeadingFont;
    CGRect _sectionScreenSignatureHeadingFrame;
    NSString *_signatureHeadingText;
    
    CGRect _sectionScreenSignatureHeadingSeparatorFrame;
    UIImage *_imgSectionScreenSignatureHeadingSeparatorBackground;
    
    
    UIColor *_sectionScreenPhotoVideoHeadingTextColor;
    UIFont *_sectionScreenPhotoVideoHeadingFont;
    CGRect _sectionScreenPhotoVideoHeadingFrame;
    NSString *_photoHeadingText;
    NSString *_videoHeadingText;
    
    CGRect _sectionScreenPhotoVideoHeadingSeparatorFrame;
    UIImage *_imgSectionScreenPhotoVideoHeadingSeparatorBackground;
    
    UIColor *_sectionScreenPhotoVideoSubHeadingLine1TextColor;
    UIFont *_sectionScreenPhotoVideoSubHeadingLine1Font;
    CGRect _sectionScreenPhotoVideoSubHeadingLine1Frame;
    NSString *_photoSubHeadingLine1Text;
    NSString *_videoSubHeadingLine1Text;
    
    UIColor *_sectionScreenPhotoVideoSubHeadingLine2TextColor;
    UIFont *_sectionScreenPhotoVideoSubHeadingLine2Font;
    CGRect _sectionScreenPhotoVideoSubHeadingLine2Frame;
    NSString *_photoSubHeadingLine2Text;
    NSString *_videoSubHeadingLine2Text;

    UIColor *_colorMultiChoiceTableBg;
    BOOL _hasMultichoiceTableBorder;
    BOOL _hasSingleChoiceTableBorder;
    UIColor *_colorSingleChoiceTableBg;
    
    BOOL _hasImageChooserMultipleChoiceTableBorder;
    UIColor *_colorImageChooserMultipleChoiceTableBg;
    BOOL _hasImageChooserSingleChoiceTableBorder;
    UIColor *_colorImageChooserSingleChoiceTableBg;

    
    SEL _eventHomeClick;
    SEL _eventSurveyBackClick;
    
    UIFont *_sectionQuestionTextFont;
    CGRect _sectionQuestionViewFrame;
    UIColor *_sectionQuestionTextColor;
}
@property(nonatomic,assign)BOOL hasImageChooserMultipleChoiceTableBorder;
@property(nonatomic,retain)UIColor *colorImageChooserMultipleChoiceTableBg;
@property(nonatomic,assign)BOOL hasImageChooserSingleChoiceTableBorder;
@property(nonatomic,retain)UIColor *colorImageChooserSingleChoiceTableBg;

@property(nonatomic,assign)BOOL hasSingleChoiceTableBorder;
@property(nonatomic,retain) UIColor *colorSingleChoiceTableBg;
@property(nonatomic,retain)UIColor *colorMultiChoiceTableBg;
@property(assign) BOOL hasMultichoiceTableBorder;

@property(assign) BOOL hasDateTimetableBorder;
@property(nonatomic,retain)UIColor *colorDateTimeTableBg;

@property(nonatomic,retain)UIColor *colorSectionBackButtonTitle;
@property(nonatomic,retain)UIColor *colorSectionHomeButtonTitle;
@property(nonatomic,retain) NSString *strSectionBackButtonTitle;
@property(nonatomic,retain) NSString *strSectionHomeButtonTitle;

@property(nonatomic,retain) UIBarButtonItem *leftBarButtonItem,*rightBarButtonItem,*infoBarButtonItem;
@property(nonatomic,retain) NSString *navigationBarTitle;
@property(nonatomic,retain) NSString *strPanelMemberID;
@property(nonatomic,retain) NSString *strSurveyID;
@property(nonatomic,retain) NSString *strUserID;
@property(nonatomic,retain) NSString *strPanelApiKey;
@property (nonatomic, assign) UIViewController *rootViewController;
@property(nonatomic,assign) UIImage *imgBackground,*imgToolbarBackground,*imgNavigationBarBackground;
@property(nonatomic,assign) UIFont *NavigationBarTitleFont;
@property(nonatomic,retain) UIColor *viewBackgroundColor,*navigationBarTintColor,*navigationBarTextColor,*toolBarTintColor;
@property(assign) Boolean hasNavigationBar;
@property(assign) Boolean hasSectionToolBar;
@property(assign) Boolean hasStartSurveyScreen;
@property(assign) Boolean hasStartSurveyScreenToolBar;
@property(nonatomic,assign) CGRect startSurveyScreenToolBarFrame;
@property(assign) Boolean hasProgressView;
@property(assign) Boolean hasStartSurveyScreenLogo;
@property(nonatomic,assign) CGRect startSurveyScreenLogoFrame;

@property(nonatomic,retain) UIColor *startSurveyScreenStartButtonTextColor;
@property(nonatomic,retain) UIColor *startSurveyScreenStartButtonBackgroundColor;
@property(nonatomic,assign) UIFont *startSurveyScreenStartButtonFont;
@property(nonatomic,assign) CGRect startSurveyScreenStartButtonFrame;
@property(nonatomic,assign) UIImage *imgStartSurveyScreenStartButtonBackground;

@property(assign) Boolean hasStartSurveyScreenMap;
@property(nonatomic,assign) CGRect startSurveyScreenMapFrame;

@property(nonatomic,assign) UIFont *startSurveyScreenSurveyTitleFont;
@property(nonatomic,retain) UIColor *startSurveyScreenSurveyTitleTextColor;
@property(nonatomic,assign) CGRect startSurveyScreenSurveyTitleFrame;

@property(assign) Boolean hasStartSurveyScreenStatistics;

@property(assign) Boolean hasSectionScreenLogo;
@property(assign) Boolean hasSectionScreenInfoButton;
@property(nonatomic,assign) CGRect sectionScreenToolBarFrame;

@property(nonatomic,retain) UIColor *sectionScreenNextButtonTextColor;
@property(nonatomic,retain) UIColor *sectionScreenNextButtonBackgroundColor;
@property(nonatomic,assign) UIFont *sectionScreenNextButtonFont;
@property(nonatomic,assign) CGRect sectionScreenNextButtonFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenNextButtonBackground;

@property(nonatomic,retain) UIColor *sectionScreenChooseDateButtonTextColor;
@property(nonatomic,assign) UIFont *sectionScreenChooseDateButtonFont;
@property(nonatomic,retain) UIColor *sectionScreenPickerTextColor;


@property(nonatomic,retain) UIColor *sectionScreenProgressTintColor;
@property(nonatomic,retain) UIColor *sectionScreenTrackTintColor;
@property(nonatomic,assign) UIImage *imgSectionScreenHomeButtonBackground;
@property(nonatomic,retain)UIColor *colorSectionScreenHomeButtonBackground;
@property(nonatomic,assign) UIImage *imgSectionSingleSelectRadio;
@property(nonatomic,assign) UIImage *imgSectionSingleSelectPlaceHolder;

@property(nonatomic,assign) UIImage *imgSectionMultiSelectCheck;
@property(nonatomic,assign) UIImage *imgSectionMultiSelectPlaceHolder;

@property(nonatomic,assign) CGRect sectionScreenSelectButtonFrame;
@property(nonatomic,assign) UIFont *sectionScreenAnswerTextFont;
@property(nonatomic,retain) UIColor *sectionScreenAnswerTextColor;
@property(nonatomic,assign) UIImage *imgSectionBackButtonBackground;
@property(nonatomic ,assign)UIColor *colorSectionBackButtonBackground;
@property(nonatomic,retain) NSString *backText;
@property(nonatomic, assign) CGFloat sectionListYAxis;

@property(nonatomic,assign) UIImage *imgNumericBack,*imgNumericBackPressed;
@property(nonatomic,assign) UIImage *imgNumericDecimal,*imgNumericDecimalPressed;
@property(nonatomic,assign) UIImage *imgNumericDone,*imgNumericDonePressed;


@property(nonatomic,retain) UIColor *sectionScreenScanButtonTextColor;
@property(nonatomic,assign) UIFont *sectionScreenScanButtonFont;
@property(nonatomic,assign) CGRect sectionScreenScanButtonFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenScanButtonBackground;
@property(nonatomic,retain) NSString *scanText;

@property(nonatomic,retain) UIColor *sectionScreenStopWatchStartButtonTextColor;
@property(nonatomic,assign) UIFont *sectionScreenStopWatchStartButtonFont;
@property(nonatomic,assign) CGRect sectionScreenStopWatchStartButtonFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenStopWatchStartButtonBackground;
@property(nonatomic,retain) NSString *startTimerText;

@property(nonatomic,retain) UIColor *sectionScreenStopWatchStopButtonTextColor;
@property(nonatomic,assign) UIFont *sectionScreenStopWatchStopButtonFont;
@property(nonatomic,assign) UIImage *imgSectionScreenStopWatchStopButtonBackground;
@property(nonatomic,retain) NSString *stopTimerText;

@property(nonatomic,retain) UIColor *sectionScreenStopWatchResetButtonTextColor;
@property(nonatomic,assign) UIFont *sectionScreenStopWatchResetButtonFont;
@property(nonatomic,assign) CGRect sectionScreenStopWatchResetButtonFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenStopWatchResetButtonBackground;
@property(nonatomic,retain) NSString *resetTimerText;

@property(nonatomic,retain) UIColor *sectionScreenDateTimeHeadingTextColor;
@property(nonatomic,assign) UIFont *sectionScreenDateTimeHeadingFont;
@property(nonatomic,assign) CGRect sectionScreenDateTimeHeadingFrame;
@property(nonatomic,retain) NSString *dateTimeHeadingText;
@property(nonatomic)NSTextAlignment lblHeaderTextAlignment;
@property(nonatomic,assign) CGRect sectionScreenDateTimeHeadingSeparatorFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenDateTimeHeadingSeparatorBackground;


@property(nonatomic,retain) UIColor *sectionScreenBarCodeHeadingTextColor;
@property(nonatomic,assign) UIFont *sectionScreenBarCodeHeadingFont;
@property(nonatomic,assign) CGRect sectionScreenBarCodeHeadingFrame;
@property(nonatomic,retain) NSString *barCodeHeadingText;

@property(nonatomic,assign) CGRect sectionScreenBarCodeHeadingSeparatorFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenBarCodeHeadingSeparatorBackground;

@property(nonatomic,retain) UIColor *sectionScreenSignatureHeadingTextColor;
@property(nonatomic,assign) UIFont *sectionScreenSignatureHeadingFont;
@property(nonatomic,assign) CGRect sectionScreenSignatureHeadingFrame;
@property(nonatomic,retain) NSString *signatureHeadingText;

@property(nonatomic,assign) CGRect sectionScreenSignatureHeadingSeparatorFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenSignatureHeadingSeparatorBackground;


@property(nonatomic,retain) UIColor *sectionScreenPhotoVideoHeadingTextColor;
@property(nonatomic,assign) UIFont *sectionScreenPhotoVideoHeadingFont;
@property(nonatomic,assign) CGRect sectionScreenPhotoVideoHeadingFrame;
@property(nonatomic,retain) NSString *photoHeadingText;
@property(nonatomic,retain) NSString *videoHeadingText;

@property(nonatomic,assign) CGRect sectionScreenPhotoVideoHeadingSeparatorFrame;
@property(nonatomic,assign) UIImage *imgSectionScreenPhotoVideoHeadingSeparatorBackground;

@property(nonatomic,retain) UIColor *sectionScreenPhotoVideoSubHeadingLine1TextColor;
@property(nonatomic,assign) UIFont *sectionScreenPhotoVideoSubHeadingLine1Font;
@property(nonatomic,assign) CGRect sectionScreenPhotoVideoSubHeadingLine1Frame;
@property(nonatomic,retain) NSString *photoSubHeadingLine1Text;
@property(nonatomic,retain) NSString *videoSubHeadingLine1Text;

@property(nonatomic,retain) UIColor *sectionScreenPhotoVideoSubHeadingLine2TextColor;
@property(nonatomic,assign) UIFont *sectionScreenPhotoVideoSubHeadingLine2Font;
@property(nonatomic,assign) CGRect sectionScreenPhotoVideoSubHeadingLine2Frame;
@property(nonatomic,retain) NSString *photoSubHeadingLine2Text;
@property(nonatomic,retain) NSString *videoSubHeadingLine2Text;

@property(assign) SEL eventHomeClick;
@property(assign) SEL eventSurveyBackClick;

@property(nonatomic,assign) UIFont *sectionQuestionTextFont;
@property(nonatomic,assign) CGRect sectionQuestionViewFrame;
@property(nonatomic,retain) UIColor *sectionQuestionTextColor;

-(void)populateSurveysWithPanelMemberID:(NSString *)_panelMemberID;

- (id) init;
- (id)initWithFrame:(CGRect)frame;

-(void)loadSurveys;
-(void)loadAndStartSurvey;
-(BOOL)isUserAuthenticated;
-(void)userLoggedOut;




@end

