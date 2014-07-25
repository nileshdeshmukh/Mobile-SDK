Version 1.0 with sample example, it has already integrated the SurveySDK.

How to use SDK
To call SDK intent from your main application, use below lines of code:
import following classes 
	com.surveyanalytics.androidsdk.Utilities.Constants;
	com.surveyanalytics.androidsdk.SurveysListActivity;

	Intent intent=new Intent (MainActivity.this,//your current activity context              
                       SurveysListActivity.class);
	startActivity(intent);
