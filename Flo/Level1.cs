

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Tobii.EyeX.Framework;

//[AddComponentMenu("Tobii EyeX/Eye Position Data")]
[AddComponentMenu("Tobii EyeX/Gaze Point Data")]

public class Level1 : MonoBehaviour { 

	// eye stuff
	private IEyeXDataProvider<EyeXEyePosition> eyePositionDataProvider;
	private IEyeXDataProvider<EyeXGazePoint> gazePointDataProvider;
	private EyeXHost eyexHost;
	public EyeXEyePosition LastEyePosition { get; private set; }
	private RaycastHit gazeRaycastHit;

	// Blinking lights array
	private ArrayList blinkingLights;

	// audio stuff
	private AudioFilesLevel1 audioFiles;

	// other stuff
	private float elapsedTime;
	private bool openFirstDoorAnimationStarted;
	private bool wallTriggerStarted;
	private bool wallSoundPlayed;
	private bool wakeupSoundPlayed;
	private bool wallsVisible; // default is false, when user closed eyes for a certain amount of time it will be true

	private float timeTillWakeupSoundStarts;
	private float timeTillFirstDoorOpens;
	private float timeTillWallSoundStarts;
	private float timeEyesAreClosed; // when eyes are closed this will count up. when eyes are opened it will get reset
	private float blinkingLightCounter; // counts up, when reached a certain number it will be reset and a light will start to blink
	private string currentBlinkingLight;
	private int currentBlinkingLightIndex;
	private bool currentBlinkingLightRemoved; // bool that is set when the current blinkin light was already removed (to avoid double-removing)

	protected void OnEnable() {
		eyePositionDataProvider.Start();
		gazePointDataProvider.Start ();
	}

	void Awake() {
		eyexHost = EyeXHost.GetInstance();
		gazePointDataProvider = eyexHost.GetGazePointDataProvider (GazePointDataMode.LightlyFiltered);
		eyePositionDataProvider = eyexHost.GetEyePositionDataProvider();

		timeTillFirstDoorOpens = 0.0f;  //9.0f;
		timeTillWallSoundStarts = 0.0f; //3.0f;
		timeTillWakeupSoundStarts = 0.0f; //2.0f;
		timeEyesAreClosed = 0.0f;
		blinkingLightCounter = 0.0f;
		
		wakeupSoundPlayed = false;
		openFirstDoorAnimationStarted = false;
		wallTriggerStarted = false;
		wallSoundPlayed = false;


		// load the blinking lights
		blinkingLights = new ArrayList ();
		blinkingLights.Add (GameObject.Find ("Panel_Colored_01"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_02"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_03"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_04"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_05"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_06"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_07"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_08"));
		blinkingLights.Add (GameObject.Find ("Panel_Colored_09"));
		currentBlinkingLightRemoved = false;

		Debug.Log ("Awake: " + this.ToString());
	}

	protected void OnDisable() {
		eyePositionDataProvider.Stop();
		gazePointDataProvider.Stop ();
	}

	void Start() {
		audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel1> ();

		// disable the rendering of the invisible walls
		GameObject.Find ("Level_1_Obstacle_Wall_01").GetComponent<MeshRenderer>().enabled = false;
		GameObject.Find ("Level_1_Obstacle_Wall_02").GetComponent<MeshRenderer>().enabled = false;
		GameObject.Find ("Level_1_Obstacle_Wall_03").GetComponent<MeshRenderer>().enabled = false;
		GameObject.Find ("Level_1_Obstacle_Wall_04").GetComponent<MeshRenderer>().enabled = false;

		Debug.Log ("Start");
	}

	void Update() {
		elapsedTime += Time.deltaTime;


		// play the wakeup sound
		if (timeTillWakeupSoundStarts < elapsedTime && wakeupSoundPlayed == false) {
			wakeupSoundPlayed = true;

			//Debug.Log ("Wakeup sound queued");
			AudioManager.instance.queueAudioClip(audioFiles.wakeupAudioClip);
		}


		// If the wall trigger was triggered then start the countdown till the voice should start
		if (wallTriggerStarted) {
			timeTillWallSoundStarts -= Time.deltaTime;

			if (wallSoundPlayed == false && timeTillWallSoundStarts < 0) {
				// play Audio Sound
				wallSoundPlayed = true;
				AudioManager.instance.queueAudioClip(audioFiles.firstWallAudioClip);
			}
		}


		// open the door if the time is right!
		if (elapsedTime > timeTillFirstDoorOpens && !openFirstDoorAnimationStarted) {
			openFirstDoorAnimationStarted = true;
			GameObject.Find ("FirstDoor").GetComponent<Animator>().Play ("OpenDoor");
		}


		// after the firstWallAudioClip was played check if the player closes his eyes for a second
		if (wallSoundPlayed && !wallsVisible) {

			// check whether left and right eye are closed
			EyeXEyePosition lastEyePosition = eyePositionDataProvider.Last;

			//Debug.Log ("lastEyePosition: " + lastEyePosition);

			if (!lastEyePosition.RightEye.IsValid && !lastEyePosition.LeftEye.IsValid) {
				timeEyesAreClosed += Time.deltaTime;
			} else {
				timeEyesAreClosed = 0.0f;
			}

			if (timeEyesAreClosed > 1.0f) {
				// show the walls
				GameObject.Find ("Level_1_Obstacle_Wall_01").GetComponent<MeshRenderer>().enabled = true;
				GameObject.Find ("Level_1_Obstacle_Wall_02").GetComponent<MeshRenderer>().enabled = true;
				GameObject.Find ("Level_1_Obstacle_Wall_03").GetComponent<MeshRenderer>().enabled = true;
				GameObject.Find ("Level_1_Obstacle_Wall_04").GetComponent<MeshRenderer>().enabled = true;

				wallsVisible = true;
			}
		}



		// if the walls are passed send out rays to check whether the player is looking at a "solar panel"
		if (wallsVisible) {


			EyeXGazePoint gazePoint = gazePointDataProvider.Last;
			//Debug.Log ("last Gaze Point: " + gazePoint);
			Vector2 screenCoordinates = gazePoint.Screen;

			Ray gazeRay = Camera.main.ScreenPointToRay (new Vector3 (screenCoordinates.x, screenCoordinates.y, 0));
			Debug.DrawRay(gazeRay.origin, gazeRay.direction, Color.magenta, 120.0f);
			if (Physics.Raycast (gazeRay.origin, gazeRay.direction, out gazeRaycastHit, 40.0f)) {

				string gazedObject = gazeRaycastHit.collider.gameObject.name;

				if (gazedObject.Contains ("Panel_Colored")) {
					Debug.Log ("Panel gazed");
					Debug.Log ("gazedObject: " + gazedObject);
					Debug.Log ("currentBlinkingLight: " + currentBlinkingLight);

					if (gazedObject == currentBlinkingLight && currentBlinkingLightRemoved == false) {
						Debug.Log ("Blinking Panel gazed");
						((GameObject) blinkingLights[currentBlinkingLightIndex]).GetComponentInChildren<MeshRenderer>().enabled = false;
						blinkingLights.RemoveAt(currentBlinkingLightIndex);
						currentBlinkingLightRemoved = true;
					}
				}
			}
		}


		GameObject.Find ("Cow").GetComponentInChildren<MeshRenderer> ().material.color = Color.Lerp (Color.magenta, Color.blue, elapsedTime % 10 / 10.0f);


		
		
		blinkingLightCounter += Time.deltaTime;

		if (blinkingLightCounter > 2.75f) {
			blinkingLightCounter = 0.0f;
			blinkLight ();
		}
	}

	void blinkLight() {
		currentBlinkingLightRemoved = false;
		int index = Random.Range (0, blinkingLights.Count);
		//Debug.Log ("index: " + index);
		currentBlinkingLight = ((GameObject)blinkingLights [index]).name;
		currentBlinkingLightIndex = index;
		((GameObject) blinkingLights [index]).GetComponent<Animator> ().Play ("WallLight_Anim");
	}

	// when a blinking light is currently blinking and watched by the user it should turn green


	// setter method
	public void setWallTriggerStarted(bool didStart) {
		wallTriggerStarted = didStart;
	}
}