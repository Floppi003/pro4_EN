using UnityEngine;
using System.Collections;

public class InteractionButton : MonoBehaviour {
	
	private string loadPrompt;
	private bool pressButton;
	public GameObject exploder;
	public GameObject goalDoor;
	public GameObject platform;
	public GameObject wallDoor;
	public bool pushPop;

	private bool didPlayGuteAlteSchalterClip = false;

	// Use this for initialization
	void Start () {
	}

	// Update is called once per frame
	public void Update () {
	}

	public void ButtonPressed() {
		if (Input.GetButtonDown ("ButtonPressed")) {
			if(pushPop){
				transform.gameObject.GetComponentInParent<Animator> ().Play ("Push");
			}else{
				transform.gameObject.GetComponentInParent<Animator> ().Play ("PushStay");
			}

			// if it is the plattform button from level 2 also check if the door is already open, then play an audio file
			if (this.platform != null) {
				if (this.platform.name.Equals ("Plattform 4x4")) {
					// check if the door is already open
					if (GameObject.Find ("Door").GetComponent<Door>().move && !this.didPlayGuteAlteSchalterClip) {
						AudioFilesLevel2 audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();
						AudioManager.instance.queueAudioClip(audioFiles.R2_GuteAlteSchalter, 1.0f);
						this.didPlayGuteAlteSchalterClip = true;
					}
				}
			}
		}
	}

	public void TriggerExploder() {
		/*
		if (exploder != null) {
			exploder.GetComponent<Explosion>().hit();
		}
		*/
	}

	public void TriggerGoal() {
		if (goalDoor != null) {
			goalDoor.GetComponent<Animator> ().Play ("Open");
		}
	}

	public void TriggerPlatform() {
		// load audio files level 2
		AudioFilesLevel2 audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();
		AudioManager.instance.playSoundEffect(audioFiles.platformMovingSound);
		Invoke ("playButtonReleaseDelayed", 0.35f);

		if (platform != null) {
			platform.GetComponent<Patrol>().NextPatrolPoint();
		}
	}

	public void TriggerDoor() {
		if (wallDoor != null) {
			//wallDoor.transform.localScale.x += 5;
			Debug.Log ("OPEN the door!");
			wallDoor.GetComponent<Door>().move = true;
		}
	}

	private void playButtonReleaseDelayed() {
		AudioFilesLevel2 audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();
		AudioManager.instance.playSoundEffect (audioFiles.buttonReleasedSound);
	}
}