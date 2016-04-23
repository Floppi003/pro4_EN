//-----------------------------------------------------------------------
// Copyright 2014 Tobii Technology AB. All rights reserved.
//-----------------------------------------------------------------------

using Tobii.EyeX.Framework;
using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Component that encapsulates a provider for <see cref="EyeXGazePoint"/> data.
/// </summary>
[AddComponentMenu("Tobii EyeX/Gaze Point Data")]
public class GazePointDataComponent : MonoBehaviour
{
    public GazePointDataMode gazePointDataMode = GazePointDataMode.LightlyFiltered;
	public bool active = true;
	//public SphereCollider colorCollider;

	//private float colliderAlive = 0;
    private EyeXHost _eyexHost;
    private IEyeXDataProvider<EyeXGazePoint> _dataProvider;
	private RaycastHit gazeRaycastHit;

	private List<ButtonTimeToLive> buttonList;

    /// <summary>
    /// Gets the last gaze point.
    /// </summary>
    public EyeXGazePoint LastGazePoint { get; private set; }

    protected void Awake()
    {
        _eyexHost = EyeXHost.GetInstance();
        _dataProvider = _eyexHost.GetGazePointDataProvider(gazePointDataMode);
		buttonList = new List<ButtonTimeToLive> ();
    }

    protected void OnEnable()
    {
        _dataProvider.Start();
    }

    protected void OnDisable()
    {
        _dataProvider.Stop();
    }

    protected void Update()
    {
		if (!active) {
			return;
		};

        LastGazePoint = _dataProvider.Last;

		for (int i = 0; i < buttonList.Count; i++) {
			buttonList[i].timeToLive -= Time.deltaTime;

			if (buttonList[i].timeToLive < 0) {
				buttonList[i].button.SetActive(true);
				buttonList.RemoveAt(i);
				i--;
			}
		}		

		// Get the last fixation point.
		EyeXGazePoint lastGazePoint = GetComponent<GazePointDataComponent>().LastGazePoint;

		if (lastGazePoint.IsValid) {
			Vector2 screenCoordinates = lastGazePoint.Screen;
			Vector3 worldCoordinates = Camera.main.ScreenToWorldPoint (new Vector3 (screenCoordinates.x, screenCoordinates.y, 0));
			Ray gazeRay = Camera.main.ScreenPointToRay (new Vector3 (screenCoordinates.x, screenCoordinates.y, 0));

			if (Physics.Raycast (gazeRay.origin, gazeRay.direction, out gazeRaycastHit, 80)) {
				//Debug.Log ("I gazed: " + gazeRaycastHit.collider.gameObject.name);
				string gazedObject = gazeRaycastHit.collider.gameObject.name;

				// set collider to gazed position (used for multiple buttons that will be colored due to the collider then)
				if (gazeRaycastHit.transform.gameObject.tag == "ColorButton") {
					gazeRaycastHit.collider.gameObject.GetComponent<ColorButton>().hit(gazeRaycastHit.collider);
					//colorCollider.transform.position = gazeRaycastHit.transform.position;
					//colliderAlive = 0.5f;
				} else if (gazeRaycastHit.transform.gameObject.tag == "AudioButton") {
					gazeRaycastHit.collider.gameObject.GetComponent<AudioButton>().hit(gazeRaycastHit.collider);
				} else if (gazeRaycastHit.transform.gameObject.tag == "AudioColorButton") {
					gazeRaycastHit.collider.gameObject.GetComponent<AudioColorButton>().hit(gazeRaycastHit.collider);
				} else if (gazeRaycastHit.transform.gameObject.name == "Logo") {
					gazeRaycastHit.collider.gameObject.GetComponent<HubLogo>().hit(gazeRaycastHit.collider);
				} else if (gazeRaycastHit.transform.gameObject.name == "Arrow") {
					gazeRaycastHit.collider.gameObject.GetComponent<GravityButton>().hit(gazeRaycastHit.collider);
				} else if (gazeRaycastHit.transform.gameObject.tag == "Exploder") {
					gazeRaycastHit.collider.gameObject.GetComponent<Explosion>().hit(gazeRaycastHit.collider);
				}

				/*--------AudioFilesLevelFloppi afFloppi = GameObject.Find ("AudioFilesLevelFloppi").GetComponent<AudioFilesLevelFloppi>();
				
				if(gazedObject.Contains("Button_red")){
					bool didPlay = AudioManager.instance.playAudioClipIfFree(afFloppi.getRedButtonClip());

					if (didPlay) {
						gazeRaycastHit.collider.gameObject.SetActive (false);
						buttonList.Add (new ButtonTimeToLive(gazeRaycastHit.collider.gameObject, 0.1f));	
					}
					
				} else if (gazedObject.Contains ("Button_green")) {
					bool didPlay = AudioManager.instance.playAudioClipIfFree (afFloppi.getGreenButtonClip());

					if (didPlay) {
						gazeRaycastHit.collider.gameObject.SetActive (false);
						buttonList.Add (new ButtonTimeToLive(gazeRaycastHit.collider.gameObject, 0.1f));
					}

				} else if (gazedObject.Contains ("Button_blue")) {
					bool didPlay = AudioManager.instance.playAudioClipIfFree(afFloppi.getBlueButtonClip());

					if (didPlay) {
						gazeRaycastHit.collider.gameObject.SetActive (false);
						buttonList.Add (new ButtonTimeToLive(gazeRaycastHit.collider.gameObject, 0.1f));
					}
				}---------*/
			}
		}

		/*if (colliderAlive > 0) {
			colliderAlive -= Time.deltaTime;
			if (colliderAlive <= 0) {
				colorCollider.transform.position = new Vector3(3, 4, -47);
			}
		}*/
    }

	private void setButtonMeshVisible(int i) {
		Debug.Log ("setButtonMeshVisible: " + i);
	}
}