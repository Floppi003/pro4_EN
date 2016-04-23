using UnityEngine;
using System.Collections;

public class SceneFadeIn : MonoBehaviour {
	
	public float fadeStartTime = 1.0f;
	public float fadeSpeed = 1.5f;
	
	private bool sceneStarting = true;
	private GUITexture guiTexture;
	public float timePassed = 0.0f;
	
	
	
	void Awake() {
		guiTexture = this.GetComponent<GUITexture> ();
		guiTexture.pixelInset = new Rect (0f, 0f, Screen.width, Screen.height);
	}
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (timePassed > fadeStartTime) {
			if (sceneStarting) {
				StartScene ();
			}
		}

		timePassed += Time.deltaTime;
	}
	
	void FadeToClear() {
		guiTexture.color = Color.Lerp (guiTexture.color, new Color(1.0f, 1.0f, 1.0f, 0.0f), fadeSpeed * Time.deltaTime);
	}
	
	void StartScene() {
		FadeToClear ();
		
		if (guiTexture.color.a <= 0.05f) {
			guiTexture.color = Color.clear;
			guiTexture.enabled = false;
			sceneStarting = false;
		}
	}
}
