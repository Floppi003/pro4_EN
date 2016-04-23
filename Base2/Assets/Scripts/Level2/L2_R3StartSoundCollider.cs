using UnityEngine;
using System.Collections;

public class L2_R3StartSoundCollider : MonoBehaviour
{
	private AudioFilesLevel2 audioFiles;
	private bool didPlay = false;
	private float soundDelay = 8.0f;
	private bool didPlaySecondSound = false;
	
	// Use this for initialization
	void Start () {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2> ();
	}
	
	// Update is called once per frame
	void Update () {
		/*if (didPlay) {
			soundDelay -= Time.deltaTime;
		}*/

		if (soundDelay < 0.0f) {
			if (!didPlaySecondSound) {
				AudioManager.instance.queueAudioClip(audioFiles.R3_ZuerstBlau);
				this.didPlaySecondSound = true;
			}
		}
	}
	
	
	void OnTriggerEnter() {
		if (!didPlay) {
			didPlay = true;
			AudioManager.instance.playAudioClipForced (this.audioFiles.R3_Start);
			AudioManager.instance.queueAudioClip (audioFiles.R3_ZuerstBlau);
		}
	}
	
	void OnTriggerStay() {}
	
	void OnTriggerExit() {}
}

