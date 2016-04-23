using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Tobii.EyeX.Framework;


[AddComponentMenu("Tobii EyeX/Gaze Point Data")]


public class EyePositionScript : MonoBehaviour {

	private IEyeXDataProvider<EyeXGazePoint> gazePointDataProvider;
	private EyeXHost eyexHost;

	private Queue<Vector2> lastGazePoints;
	public int smoothValue = 5;
	private bool showEyePosition = false; //indicates whether the point indicating the eyeposition should be visible


	void Awake() {
		Debug.Log ("EyePositionScript: Awake()");

		this.eyexHost = EyeXHost.GetInstance();
		this.gazePointDataProvider = eyexHost.GetGazePointDataProvider (GazePointDataMode.LightlyFiltered);
		this.lastGazePoints = new Queue<Vector2> ();
	}

	// Use this for initialization
	void Start () {
		// add default values
		for (int i = 0; i < this.smoothValue; i++) {
			this.lastGazePoints.Enqueue (new Vector2(0, 0));
		}
	}
	
	// Update is called once per frame
	void Update () {
		EyeXGazePoint lastGazePoint = this.gazePointDataProvider.Last;
		Vector2 lastGazeScreenPosition = lastGazePoint.Screen;
		this.lastGazePoints.Enqueue (lastGazeScreenPosition);

		// calculate average point on screen
		float x = 0.0f;
		float y = 0.0f;
		Vector2[] lastScreenPoints = this.lastGazePoints.ToArray ();
		foreach (Vector2 screenPosition in lastScreenPoints) {
			x += screenPosition.x;
			y += screenPosition.y;
		}

		x = x / lastScreenPoints.Length;
		y = y / lastScreenPoints.Length;
		
		// set the eyeposition to the screen point
		GameObject eyePosition = GameObject.Find ("EyePosition");
		if (eyePosition != null) {
			// if the eyeposition image should not be shown place it at -10000 -10000 0 position
			if (this.showEyePosition) {
				eyePosition.transform.position = new Vector3(x, y, 0);
			} else {
				eyePosition.transform.position = new Vector3(-10000, -10000, 0);
			}
		}

		// dequeue the last screen position
		this.lastGazePoints.Dequeue ();


		// check key input
		if (Input.GetButtonDown ("EyePoint")) {
			this.showEyePosition = !this.showEyePosition;
		}
	}

	protected void OnEnable() {
		Debug.Log ("EyePositionScript: OnEnable()");
		this.gazePointDataProvider.Start ();
	}
	
	protected void OnDisable() {
		Debug.Log ("EyePositionScript: OnDisable()");
		this.gazePointDataProvider.Stop ();
	}
}
