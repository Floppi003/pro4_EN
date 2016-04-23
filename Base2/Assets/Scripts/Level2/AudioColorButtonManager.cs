using UnityEngine;
using System.Collections;

public class AudioColorButtonManager : MonoBehaviour {
	public int tries = 3;
	public float delayTime = 5;

	private int counterPressed;
	private int counterHit;
	private float timeToChange = -1;
	
	private AudioColorButton[] audioButtons;
	private ColorButton[] colorButtons;
	private GameObject buttons;
	private AudioColorButton obj;

	private AudioFilesLevel2 audioFiles;

	private bool didStartCounterHitCounting = false;

	
	// Use this for initialization
	void Start () {
		counterPressed = 0;
		counterHit = 0;
		
		buttons = GameObject.Find ("ButtonWall");
		audioButtons = buttons.GetComponentsInChildren<AudioColorButton>();
		colorButtons = buttons.GetComponentsInChildren<ColorButton>();

		audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();
	}
	
	// Update is called once per frame
	void Update () {
		if (timeToChange > 0) {
			timeToChange -= Time.deltaTime;
			if (timeToChange <= 0) {
				// activate color functionality
				for (int i = 0; i < audioButtons.Length; i++) {
					colorButtons[i].enabled = true;
					buttons.transform.GetChild(i).tag = "ColorButton";
				}
				// enable highlighting
				obj.gazePoint.GetComponent<GazePointDataComponent>().active = true;
			}
		}
	}

	public void pushButton(Material mat, AudioColorButton obj) {
		counterPressed++;
		AudioManager.instance.playSoundEffect (audioFiles.buttonPressedSound);
	}

	public void hitButton(Material mat, AudioColorButton obj) {
		if (!this.didStartCounterHitCounting) {return;}

		counterHit++;
		AudioManager.instance.playSoundEffect (audioFiles.buttonGazedSound);


		if (counterHit >= tries) {
			this.obj = obj;
			timeToChange = delayTime;

			// reset Color and lock highlighting
			obj.resetColor ();
			obj.gazePoint.GetComponent<GazePointDataComponent> ().active = false;

			// deactivate audio functionality
			for (int i = 0; i < audioButtons.Length; i++) {
				audioButtons [i].enabled = false;
			}

			// play sound effect saying that this doesn't work
			AudioManager.instance.playAudioClipForced (this.audioFiles.R4_SoWirdDasNix);
			AudioManager.instance.queueAudioClip(this.audioFiles.R4_SchonBesser, 1);
		
		} else {
			// tell button color
			switch (mat.name) {
			case "Red":
				AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Rot());
				break;
				
			case "Green":
				AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Gruen());
				break;
				
			case "Blue":
				AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Blau());
				break;
				
			case "Orange":
				AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Gelb());
				break;
			}
		}
	}

	public void startCounterHitCounting() {
		Debug.Log ("didStartCounterHitCounting");
		this.didStartCounterHitCounting = true;
	}
}
