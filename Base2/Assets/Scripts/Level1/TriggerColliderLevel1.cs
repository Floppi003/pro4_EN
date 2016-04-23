using UnityEngine;
using System.Collections;

public class TriggerColliderLevel1 : MonoBehaviour {
	
	private GameManager gm;
	private AudioFilesLevel1 audioFiles;
	private Level1 level1;
	
	private bool didTouchWallBehindCollider;
	
	// Use this for initialization
	void Start () {
		this.gm = GameObject.Find ("GM").GetComponent<GameManager> ();
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel1> ();
		this.level1 = GameObject.Find ("GM").GetComponent<Level1> ();
		
		didTouchWallBehindCollider = false;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	
	// Triggers
	void OnTriggerEnter(Collider other) {

		if (this.name.Equals ("WallCollider")) {
			// also change the value in level1 script
			this.level1.setWallTriggerStarted (true);
			
			// also call the method to push the player back
			this.level1.pushPlayerBack ();
			
		} else if (this.name.Equals ("WallBehindCollider")) {
			if (didTouchWallBehindCollider == false) {
				AudioManager.instance.queueAudioClip (audioFiles.getSleepingBeauty_Stage01_AudioClip (), 1.0f);
				didTouchWallBehindCollider = true;
			}
			
		} else if (this.name.Equals ("WallLightsCollider")) {
			level1.setPlayerInWallLightsArea (true);
			level1.setPlayerInPanelArea (false);
			
		} else if (this.name.Equals ("PanelCollider")) {
			level1.setPlayerInPanelArea (true);
			level1.setPlayerInWallLightsArea (false);
			AudioManager.instance.queueAudioClip (audioFiles.pillarsSuspicious);
			
		} else if (this.name.Equals ("CowCollider")) {
			AudioManager.instance.playAudioClipIfFree (audioFiles.paula);
		} else if (this.name.Contains ("PushBackCollider")) {
			// push the player back!
			level1.pushPlayerBack();
		}
	}
	
	void OnTriggerStay(Collider other) {
	}
	
	void OnTriggerExit(Collider other) {
		
	}
}
