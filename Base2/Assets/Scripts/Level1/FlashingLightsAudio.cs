using UnityEngine;
using System.Collections;

public class FlashingLightsAudio : MonoBehaviour {

	public float delayFirst;
	public float delaySecond;
	public int disableTries;

	private bool triggered;
	private AudioFilesLevel1 audioFiles;
	private float timeUntilFirst;
	private float timeUntilSecond;
	private int disableCount;

	// Use this for initialization
	void Start () {
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel1> ();
		timeUntilFirst = 0;
		timeUntilSecond = 0;
		triggered = false;
		disableCount = 0;
	}
	
	// Update is called once per frame
	void Update () {
		if (disableCount == disableTries) {
			this.enabled = false;
		}

		if (triggered) {
			if (timeUntilFirst > 0) {
				timeUntilFirst -= Time.deltaTime;
				if(timeUntilFirst <= 0) {
					AudioManager.instance.queueAudioClip (audioFiles.flashingLights);
				}
			}

			if (timeUntilSecond > 0) {
				timeUntilSecond -= Time.deltaTime;
				if (timeUntilSecond <= 0) {
					AudioManager.instance.queueAudioClip (audioFiles.flashingLightsLook);
					this.enabled = false;
				}
			}
		}
	}

	public void OnTriggerEnter() {
		if (!triggered) {
			timeUntilFirst = delayFirst;
			timeUntilSecond = delaySecond;
			triggered = true;
		}
	}

	public void disable() {
		disableCount++;
	}
}
