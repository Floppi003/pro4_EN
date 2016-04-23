using UnityEngine;
using System.Collections;

public class JPDeathSoundCollider : MonoBehaviour
{
	private AudioFilesLevel3 audioFiles;
	
	public void Start() {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel3> ();
	}
	
	protected void OnTriggerEnter() {
		// TODO: record death audio
		//AudioManager.instance.queueAudioClip (/*choose audioClip*/ null, 1);
	}
}