Version 1.0 with sample example, it has already integrated the SurveySDK.

How to use SDK
==============

import following classes
------------------------
- com.surveyanalytics.androidsdk.Utilities.Constants
- com.surveyanalytics.androidsdk.SurveysListActivity

You can start the Survey by calling intent for SurveyListActivity like this:
-----------------------------------------------------------------
	Intent intent=new Intent (MainActivity.this,//your current 	activity context              
                   SurveysListActivity.class);
	startActivity(intent);