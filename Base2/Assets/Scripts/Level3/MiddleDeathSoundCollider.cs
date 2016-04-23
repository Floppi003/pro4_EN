using UnityEngine;
using System.Collections;

public class MiddleDeathSoundCollider : MonoBehaviour
{
	private AudioFilesLevel3 audioFiles;
	private bool didPlay = false;
	
	public void Start() {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel3> ();
	}
	
	protected void OnTriggerEnter() {
		//AudioManager.instance.playAudioClipForced (this.audioFiles.getAudioClipHeyVertrauen());

		// if it was already played make a 33(+) / 67 (-) chance to play it again
		if (this.didPlay) {
			if (Random.Range (0, 3) == 0) {
				AudioManager.instance.queueAudioClip (this.audioFiles.linkesRechtesAuge, 1);
			} else if (Random.Range (0, 3) == 0) {
				// if not the upper file is played, then calculate a 33% change to play the "du musst hier ein wenig aufpassen..." clip
				AudioManager.instance.queueAudioClip (this.audioFiles.aufpassen, 1);
			}

		} else {
			AudioManager.instance.queueAudioClip (this.audioFiles.linkesRechtesAuge, 1);
			this.didPlay = true;
		}
	}
}

