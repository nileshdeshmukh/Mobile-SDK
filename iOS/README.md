Survey SDK Version 1.1

SurveyAnalytics iOS Survey SDK provides facilities to integrate our survey module in your existing iPhone application. It provides an easy way to add and configure survey module in your mobile application and collect the survey responses.

The SDK supports two modes or two use cases:List of Multiple surveys and Single Survey.
<p><b>Multiple Surveys</b></p>
List of all surveys which is assigned to your panel member.
<ol><li>Set API key of your account.</li>
<li>Set panel member ID of your account.</li></ol>
<p><b>Single Survey</b></p>
<br>Get a specific survey which is assigned to your panel member.</br>
  <ol><li>Set API key of your account.</li>
  <li>Set panel member ID of your account.</li>
  <li> Set specific survey ID which you want to answer.</li></ol>
  
<p><b>List of Supported Question type:<b></p>
<p>Standard Question Section</p>
<br><ol type="I"><li>Graphical Rating Question</br>
  <ol><li type="1">Star rating</li>
  <li type="1">Scale (Graphic)</li>
  <li type="1">Smiley (yes/no)</li>
  <li type="1">Smiley image(Rating )</li></ol></li>
<li>Open end Text Question
<ol><li type="1">Comment Box</li>
<li type="1">Single Row Text</li>
<li type="1">Numeric (Freeform) input</li>
<li type="1">Email Address</li></ol></li>
<li> Multiple choice Question
<ol><li type="1">Single Selection Option </li>
<li type="1">Multiple Selection Option</li>
<li type="1">DropDown </li>
<li type="1">Multiple Image Selection Option</li>
<li type="1">Single Image Selection Option</li>
<li type="1">Image Rating</li>
</ol>
</li>
<li>Customer Satisfaction
<ol><li type="1">Net Promoter Score</li>
</ol>
</li>
<li>Misc
<ol><li type="1">Rank Order</li>
<li type="1">Date / Time</li>
</li>
<li>Matrix Table
<ol><li type="1">Multiple Point Scale</li>
<li type="1">CheckBox  Multiple Point Scale</li>
<li type="1">SpreadSheet</li>
</ol>
</li>
<li>Presentation/Heading 
<ol><li type="1">Presentation Text</li>
<li type="1">Section Heading</li>
<li type="1">Section Sub Heading</li>
</ol>
</li>
</ol>
<p>Advanced Question Types</p>
<ol type="I"><li>Data / Reference
<ol><li type="1">Dynamic Lookup Table</li>
</ol>
</li>
<li>Conjoint Models
<ol><li type="1">Conjoint (Max-Diff)</li>
</ol>
</li>
<li>Mobile
. Stop Watch
 Bar Code
 </li>
 <li>
 Upload
 <br>
Attach/Upload File (Hand Drawing/Photo/Audio/Video)</br>
 </li></ol>
 

 

<p><b>Requirements:</b></p>
<ul><li>Xcode 5 and iOS SDK 7</li>
<li>iOS 6.0+ target deployment</li>
<li> armv6, armv7, armv7s, and arm64 devices, and the simulator</li>
<li>iPhone and iPad of all sizes and resolutions</li></ul>

<p><b>Initial Setup of SDK</b></p>
<b>Add the SDK to Your Project</b>
<ol><li> Clone or download the SDK, which consists of header files, license acknowledgements, release notes, and a static library. It also includes a sample app.</li>
<li> Add the SAlMobile directory (containing several .h files and SAUICatalog.embeddedFramework) to your Xcode project. We recommend checking "Copy items..." and selecting "Create groups...".</li>
<li>In your project's Build Settings (in the TARGETS section, not the PROJECTS section):
<ul style="list-style-type:circle"><li> add ­all_load and ­ObjC to Other Linker Flags</li>
<li>enable Link Frameworks Automatically</li></ul>
<li> In your project's Build Phases, link your project with these libraries. Weak linking for iOS versions back to 6.0 is supported.
<ul style="list-style-type:circle"><li> Mapkit.framework</li>
<li> AVFoundation.framework</li>
<li> CoreText.framework</li>
<li> COreMedia.framework</li>
<li> CoreLocation.framework</li>
<li>CoreVideo.framework</li>
<li> AudioToolbox.framework</li>
<li> CoreData.framework</li>
<li>COreGraphics.framework</li>
<li> MobileCoreServices.framework</li><li> MediaPlayer.framework</li>
<li> SystemConfiguration.framework</li><li>QuartzCore.framework</li>
<li>OpenGLES.framework</li>
<li> libiconv.dylib</li>
<li>libicucore.dylib</li>
<li> libstdc++.dylib</li>
<li>SAUICatalog.framework</li></ul></li></ol>
<p><b>How to use SDK</b></p>
To call SDK intent from your main application, use below lines of code:
<ol><li>Import following classes in your application : #import <SAUICatalog/SASurveyListView.h></li>
<li> Define and create SASurveyListView object into your class.
<p>@interface SingleSurveyNavigationViewController : UIViewController {</p>
SASurveyListView *_saView; }
<p>@property(nonatomic,retain) IBOutlet SASurveyListView *saView;</p></li>
<li> Set the properties of created objects.
<br>// To set current controller for Root Observer of SDK callback events</br><br>[self.saView setRootViewController:self];</br>
<br>// To set Panel Nember ­ Replace with appropriate id [self.saView setStrPanelMemberID:@"2103853"];
<br>// To set Survey ID ­ Replace with appropriate id </br><br>[self.saView setStrSurveyID:@"3153964"];</br>
<br>// To set ApiKey ­ Replace with appropriate apiKey mapped to your panel</br><br> [self.saView setStrPanelApiKey:@"f927c3e6­2344­4f6c­84ac­ae3523d74065"];</br>
<br>Survey Account Login</br>
<br>user­ sdk@surveyanalytics.com</br><br> pass­ sdk_2014</br></li>
<li> Download and start the survey module into your app.
<br>// To download and Start specific Survey;</br>
<br>[self.saView loadAndStartSurvey]</br>
<br>// To download and launch Survey list </br>
<br>[self.saView loadSurveys];</br></li></ol>
<p><b>Mandatory setup</b></p>
Add below permissions in main application’s “viewController” file
<ol><li>Define and create SASurveyListView object into your class</li>
<li>To set current controller for Root Observer of SDK callback events in .m file<br>[self.saView setRootViewController:self];</br></li>
<li>To set Panel Nember ­ Replace with appropriate id
<br>[self.saView setStrPanelMemberID:@"2103853"];</br></li>
<li> To set Panel API key ­ Replace with appropriate
<br>[self.saView setStrPanelApiKey:@"f927c3e6­2344­4f6c­84ac­ae3523d74065"];</br></li></ol> 
<p>Documentation is available<a href="https://github.com/surveyanalyticscorp/Mobile-SDK/blob/master/iOS/integrationGuide.pdf"> here</a>.</p>
