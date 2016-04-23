using UnityEngine;
using System.Collections;

public class BridgeDeathSoundCollider : MonoBehaviour
{
	private AudioFilesLevel3 audioFiles;
	
	public void Start() {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel3> ();
	}
	
	protected void OnTriggerEnter() {
		//AudioManager.instance.playAudioClipForced (this.audioFiles.getAudioClipHeyVertrauen());
		AudioManager.instance.queueAudioClip (this.audioFiles.getAudioClipHeyVertrauen (), 1);
	}
}

