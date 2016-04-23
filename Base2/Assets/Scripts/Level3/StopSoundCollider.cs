using UnityEngine;
using System.Collections;

public class StopSoundCollider : MonoBehaviour
{
	private bool didPlay = false;
	private AudioFilesLevel3 audioFiles;
	
	public void Start() {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel3> ();
	}
	
	protected void OnTriggerEnter() {
		if (!didPlay) {
			AudioManager.instance.playAudioClipForced (this.audioFiles.Stop);
			didPlay = true;
		}
	}
}

