using UnityEngine;
using System.Collections;

public class L2_R1SchalterSoundCollider : MonoBehaviour
{

	private AudioFilesLevel2 audioFiles;
	private bool didPlay = false;
	private float timeSpentInRoom = 0.0f;
	private float timeTillNextSound = 8.0f;
	private bool didSolveRiddle;

	// Use this for initialization
	void Start () {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2> ();
	}
	
	// Update is called once per frame
	void Update () {

		// when player did enter room count up the time he spent in this room
		if (didPlay) {
			this.timeSpentInRoom += Time.deltaTime;
		}

		if (!didSolveRiddle) {
			// if the riddle hasn't been solved yet check how long the player is already in this room
			if (this.timeSpentInRoom > this.timeTillNextSound) {
				this.timeSpentInRoom = 0.0f;
				this.timeTillNextSound = Random.Range (7, 10);
				AudioManager.instance.playAudioClipForced(this.audioFiles.getAudioClipR1_DrueckDenschalter());
			}
		}
	}

	void OnTriggerEnter() {
		if (!didPlay) {
			AudioManager.instance.playAudioClipForced (this.audioFiles.R1_Schalter);
			didPlay = true;
		}
	}

	void OnTriggerStay() {}

	void OnTriggerExit() {}


	public void setDidSolveRiddle(bool didSolveRiddle) {
		this.didSolveRiddle = didSolveRiddle;
	}
}

