//-----------------------------------------------------------------------
// Copyright 2014 Tobii Technology AB. All rights reserved.
//-----------------------------------------------------------------------

using UnityEngine;

/// <summary>
/// Script that displays GUI buttons for recalibration and to test calibration.
/// <para>
/// Note that the Application.runInBackground property is set to true
/// while waiting for the recalibration to finish. If you use this script 
/// in a game, make sure that the background running does not cause any 
/// unpleasant side effects. 
/// </para>
/// </summary>
/// 
/// 

[AddComponentMenu("Tobii EyeX/Gaze Point Data")]

public class CalibrationTitleGUI : MonoBehaviour
{
    private EyeXHost _host;
    private WaitingState _waitingState = WaitingState.NotWaiting;
    private bool _originalRunInBackgroundState;

	private float timeCounter = 0.0f;
	public float timeCalibrationStarts = 11.0f;
	private bool didStartCalibration = false;
	private int counter = 0;
	private float startingTime = 0;

	private GameObject textGO;
	private GameObject textGOSkip;
	private GameObject textCountdown;

    private enum WaitingState
    {
        NotWaiting = 0,
        WaitingForCalibrationToStart,
        WaitingForCalibrationToFinish
    }

    void Start()
    {
        _host = EyeXHost.GetInstance();
        _host.Start();

        _originalRunInBackgroundState = Application.runInBackground;

		// switch to external calibration tool
		timeCounter = 0.0f;
		didStartCalibration = false;
		startingTime = Time.deltaTime;

		this.textGO = GameObject.Find ("Text");
		this.textGOSkip = GameObject.Find ("Skip");
		this.textCountdown = GameObject.Find ("Countdown");
    }

    void OnDisable()
    {
        StopWaitingForCalibration();
    }

    void OnGUI()
    {
        // Draw the title.
        //GuiHelpers.DrawText("CALIBRATION", new Vector2(10, 10), 36, GuiHelpers.Magenta);

       // if (IsSupportedEngineVersion()) {
            // Draw the "Recalibrate" button.
            /*if (GUI.Button(new Rect(10, 70, 150, 30), "Recalibrate"))
            {
				
            }

            // Draw the "Test calibration" button.
            if (GUI.Button(new Rect(10, 110, 150, 30), "Test calibration"))
            {
                _host.LaunchCalibrationTesting();
            }*/
        //}
        
    }

    void Update()
    {
		if (timeCounter - startingTime > counter && counter < timeCalibrationStarts) {
			textCountdown.GetComponent<UnityEngine.UI.Text> ().text = (timeCalibrationStarts - counter - 1).ToString();
			counter++;
		}

		timeCounter += Time.deltaTime;

		if (timeCounter > this.timeCalibrationStarts && didStartCalibration == false) {
			didStartCalibration = true;

			textGO.GetComponent<UnityEngine.UI.Text> ().text = "";
			Destroy (textGOSkip);
			Destroy (textCountdown);

			StartWaitingForCalibration();
			_host.LaunchRecalibration();

			textGO.GetComponent<UnityEngine.UI.Text> ().text = "If you see this screen, Tobii EyeX could not be found.\n\nIt is recommended to install Tobii EyeX, otherwise you cannot play the game proberly.\n\nPress E to continue or Space to get back into the menu central.";
			print ("doing");
		}

        if (_waitingState == WaitingState.WaitingForCalibrationToStart
            && _host.EyeTrackingDeviceStatus == EyeXDeviceStatus.Pending)
        {
            print("Waiting for calibration to finish");
            _waitingState = WaitingState.WaitingForCalibrationToFinish;
        }
        else if (_waitingState == WaitingState.WaitingForCalibrationToFinish
                 && _host.EyeTrackingDeviceStatus == EyeXDeviceStatus.Tracking)
        {
            print("Calibration finished. Bring back focus to application");
            WindowHelpers.ShowCurrentWindow();

            StopWaitingForCalibration();
        }

		if (Input.GetKeyDown (KeyCode.E)) {
			AutoFade.LoadLevel("Level 1" , 1, 1, Color.black);
		}

		if (timeCounter > this.timeCalibrationStarts && Input.GetKeyDown (KeyCode.Space)) {
			AutoFade.LoadLevel("Central" , 1, 1, Color.black);
		}


    }

    private void StartWaitingForCalibration()
    {
        _originalRunInBackgroundState = Application.runInBackground;

        // Set runInBackground to true to be able to wait for calibration to finish.
        Application.runInBackground = true;

        print("Waiting for calibration to start");
        _waitingState = WaitingState.WaitingForCalibrationToStart;
    }

    private void StopWaitingForCalibration()
    {
        // Reset runInBackground to its original value when the waiting is over.
        Application.runInBackground = _originalRunInBackgroundState;

        _waitingState = WaitingState.NotWaiting;

		AutoFade.LoadLevel("Level 1" , 1, 1, Color.black);
    }

    private bool IsSupportedEngineVersion()
    {
        // The EyeX Engine version need to be equal to or higher than 1.1.
        var version = _host.EngineVersion;
		Debug.Log ("version: " + version); 
        return version != null && version.Major >= 1 && version.Minor >= 1;
    }
}
