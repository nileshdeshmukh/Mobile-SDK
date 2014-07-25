Version 1.0 with sample example, it already integrate the SurveySDK.

How to use SDK
To call SDK intent from your main application, use below lines of code:
import following classes 
	com.surveyanalytics.androidsdk.Utilities.Constants;
	com.surveyanalytics.androidsdk.SurveysListActivity

	Intent intent=new Intent (MainActivity.this,//your current activity context              
                       SurveysListActivity.class);
	startActivity(intent);


Mandatory setup 
Add below permissions in main application’s “AndroidManifest.xml” file
   <uses-permission android:name="android.permission.INTERNET" />
   <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
   <uses-permission android:name="android.permission.ACCESS_MOCK_LOCATION" />
   <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
   <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
   <uses-permission android:name="android.permission.USE_CREDENTIALS" />
   <uses-permission android:name="android.permission.READ_CONTACTS" />
   <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
   <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
   <uses-permission android:name="android.permission.RECORD_AUDIO" />
   <uses-permission android:name="android.permission.CAMERA" />
   <uses-permission android:name="android.permission.GET_TASKS" />
   <uses-feature
       android:name="android.hardware.camera"
        android:required="false" />


Also define the following activities 
	    <activity
           android:name="com.surveyanalytics.androidsdk.SurveysListActivity"
           android:exported="true"
           android:screenOrientation="portrait"></activity>
        <activity
           android:name="com.surveyanalytics.androidsdk.TakeSurvey"
           android:exported="true"
           android:windowSoftInputMode="adjustPan"
           android:screenOrientation="portrait"></activity>
        <activity
           android:name="com.surveyanalytics.androidsdk..ImagePreview"
           android:screenOrientation="portrait"></activity>
        <activity
           android:configChanges="keyboardHidden|orientation|keyboard"
           android:name="com.surveyanalytics.androidsdk.AudioVideoPlayer"
           android:screenOrientation="landscape"></activity>
        <activity
           android:configChanges="keyboardHidden|orientation|keyboard"
           android:name="com.surveyanalytics.androidsdk.VideoCapture"
           android:screenOrientation="landscape"></activity>
        <activity
            android:configChanges="keyboardHidden|orientation|keyboard" 
            android:name="com.surveyanalytics.androidsdk.ThanksAcitivty"
            android:screenOrientation="portrait"></activity>
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
