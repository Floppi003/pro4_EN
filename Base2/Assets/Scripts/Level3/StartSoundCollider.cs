using UnityEngine;
using System.Collections;

public class StartSoundCollider : MonoBehaviour {

	private bool didPlay = false;
	private AudioFilesLevel3 audioFiles;

	void Start() {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel3> ();
	}
	
	void OnTriggerEnter() {
		if (!didPlay) {
			AudioManager.instance.playAudioClipForced (this.audioFiles.Wow);
			didPlay = true;
		}
	}
}
