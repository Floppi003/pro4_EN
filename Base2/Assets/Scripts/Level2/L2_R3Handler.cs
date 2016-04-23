using UnityEngine;
using System.Collections;

public class L2_R3Handler : MonoBehaviour
{

	private AudioFilesLevel2 audioFiles;

	private int roomTwoStage = 0; // stage 0: stimme sagt noch keine button farbe
	// stage 1: stimme sagt dir die farbe an
	private int buttonsPressed = 0;

	private float planChangedTimer = 18.0f; // after "planaenderung" was played this will start to count down, when reaching 0 it will enable the four buttons
	private bool didEnableButtons = false;

	// Use this for initialization
	void Start () {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();

		// disable the four buttons
		GameObject.Find ("AudioButton").GetComponent<AudioButton> ().setShouldAct (false);
		GameObject.Find ("AudioButton 1").GetComponent<AudioButton> ().setShouldAct (false);
		GameObject.Find ("AudioButton 2").GetComponent<AudioButton> ().setShouldAct (false);
		GameObject.Find ("AudioButton 3").GetComponent<AudioButton> ().setShouldAct (false);
	}
	
	// Update is called once per frame
	void Update () {
		if (this.buttonsPressed >= 2) {
			this.planChangedTimer -= Time.deltaTime;
		}

		if (this.planChangedTimer <= 0) {
			if (!this.didEnableButtons) {
				// enable the four buttons
				GameObject.Find ("AudioButton").GetComponent<AudioButton> ().setShouldAct (true);
				GameObject.Find ("AudioButton 1").GetComponent<AudioButton> ().setShouldAct (true);
				GameObject.Find ("AudioButton 2").GetComponent<AudioButton> ().setShouldAct (true);
				GameObject.Find ("AudioButton 3").GetComponent<AudioButton> ().setShouldAct (true);
				GameObject.Find ("Door AudioButtons").GetComponent<AudioButtonManager>().enableCounter();
				this.didEnableButtons = true;
			}
		}
	}

	public void didPressAudioButton() {
		this.buttonsPressed++;

		if (this.roomTwoStage == 0) {
			// if stage 0 then voice should say you should press the blue button
			if (this.buttonsPressed == 1) {
				AudioManager.instance.queueAudioClip(this.audioFiles.R3_BlauerSchalter);
			}
			
			
			if (this.buttonsPressed >= 2) {
				AudioManager.instance.queueAudioClip(this.audioFiles.R3_Planaenderung, 1.0f);
				this.roomTwoStage = 1;
			}
		}
	}
}

