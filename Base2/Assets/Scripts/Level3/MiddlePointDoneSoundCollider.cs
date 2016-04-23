using UnityEngine;
using System.Collections;

public class MiddlePointDoneSoundCollider : MonoBehaviour
{
	private bool didPlay = false;
	private AudioFilesLevel3 audioFiles;
	private GameObject bridgeDeathCollider;
	private GameObject middlePointCollider;
	private EyePosition_L3 eyePosition;
	private bool activate = false;
	
	public void Start() {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel3> ();
		this.bridgeDeathCollider = GameObject.Find ("BridgeDeathSoundCollider");
		this.middlePointCollider = GameObject.Find ("MiddlePointEndSoundCollider");
		this.eyePosition = GameObject.Find ("GM").GetComponent<EyePosition_L3> ();
	}

	public void Update() {
		if (activate && eyePosition.getEyesClosedDuration() <= 0) {
			middlePointCollider.GetComponent<BoxCollider> ().enabled = true;
		}
	}
	
	protected void OnTriggerEnter() {
		if (!didPlay) {
			AudioManager.instance.playAudioClipForced (this.audioFiles.BrueckeGeschafft);
			bridgeDeathCollider.GetComponent<BoxCollider>().enabled = false;
			activate = true;
			didPlay = true;
			Invoke ("enableMiddlePointEndSoundCollider", 12);
		}
	}

	private void enableMiddlePointEndSoundCollider() {
		this.middlePointCollider.GetComponent<MiddlePointEndSoundCollider> ().setShouldBeActive (true);
	}
}

