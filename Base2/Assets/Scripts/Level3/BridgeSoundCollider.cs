using UnityEngine;
using System.Collections;

public class BridgeSoundCollider : MonoBehaviour
{

	private AudioFilesLevel3 audioFiles;
	private float onTriggerStayCounter = 0.0f;
	private float timeTillNextAudioClip;

	// Use this for initialization
	void Start () {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel3> ();
		this.timeTillNextAudioClip = 0.5f;
	}


	// Trigger Management
	void OnTriggerEnter() {
		this.onTriggerStayCounter = 0.0f;
	}

	void OnTriggerStay() {
		this.onTriggerStayCounter += Time.deltaTime;
	}

	void OnTriggerExit() {
		this.onTriggerStayCounter = -1.0f;
	}

	void Update() {
		if (this.onTriggerStayCounter > this.timeTillNextAudioClip) {
			// play the next audio clip 
			AudioManager.instance.playAudioClipForced(this.audioFiles.getAudioClipBruecke());
			this.onTriggerStayCounter = 0.0f;
			this.timeTillNextAudioClip = 4.0f;
		}
	}
}

