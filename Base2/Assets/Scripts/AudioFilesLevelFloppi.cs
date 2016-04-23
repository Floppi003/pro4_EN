using UnityEngine;
using System.Collections;

public class AudioFilesLevelFloppi : MonoBehaviour {

	public AudioClip[] bridgeFelldownClipsStage1;
	public AudioClip[] bridgeFelldownClipsStage2;
	public int bridgeFelldownCounter;

	public AudioClip[] leftEyeRightEyeFelldownClips;
	public AudioClip[] bridgeBeforeClips;
	public AudioClip[] greenButtonClips;
	public AudioClip[] redButtonClips;
	public AudioClip[] blueButtonClips;


	// player specific files
	public enum FellofZone {
		FellofZoneBridge,
		FellofZoneLeftEyeRightEye,
		None
	}

	public FellofZone fellofZone;



	void Awake() {
		this.bridgeFelldownCounter = 0;
	}

	public AudioClip getBridgeFelldownClip() {
		AudioClip audioClipToReturn;

		if (bridgeFelldownCounter <= 1) {
			int random = Random.Range (0, bridgeFelldownClipsStage1.Length);
			audioClipToReturn = bridgeFelldownClipsStage1 [random];
		} else {
			int random = Random.Range (0, bridgeFelldownClipsStage2.Length);
			audioClipToReturn = bridgeFelldownClipsStage2[random];
		}

		bridgeFelldownCounter++;
		return audioClipToReturn;
	}

	public AudioClip getLeftEyeRightEyeFelldownClip() {
		int random = Random.Range (0, this.leftEyeRightEyeFelldownClips.Length);
		return this.leftEyeRightEyeFelldownClips [random];
	}

	public AudioClip getBridgeBeforeClip() {
		int random = Random.Range (0, this.bridgeBeforeClips.Length);
		return this.bridgeBeforeClips[random];
	}

	public AudioClip getGreenButtonClip() {
		int random = Random.Range (0, this.greenButtonClips.Length);
		return this.greenButtonClips[random];
	}

	public AudioClip getRedButtonClip() {
		int random = Random.Range (0, this.redButtonClips.Length);
		return this.redButtonClips [random];
	}

	public AudioClip getBlueButtonClip() {
		int random = Random.Range (0, this.blueButtonClips.Length);
		return this.blueButtonClips [random];
	}
}
