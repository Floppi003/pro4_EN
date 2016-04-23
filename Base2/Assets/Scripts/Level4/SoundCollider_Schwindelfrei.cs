﻿using UnityEngine;
using System.Collections;

public class SoundCollider_Schwindelfrei : MonoBehaviour {

	private bool didPlaySound = false;
	private AudioFilesLevel4 audioFiles;
	
	// Use this for initialization
	void Start () {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel4> ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnTriggerEnter() {
		if (!this.didPlaySound) {
			AudioManager.instance.queueAudioClip(this.audioFiles.schwindelfrei);
			this.didPlaySound = true;
		}
	}
	
	void OnTriggerStay() {}
	
	void OnTriggerExit() {}
}
