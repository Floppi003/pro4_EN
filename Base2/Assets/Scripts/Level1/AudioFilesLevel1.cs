using UnityEngine;
using System.Collections;

public class AudioFilesLevel1 : MonoBehaviour {
	
	public AudioClip wakeupAudioClip;
	public AudioClip firstWallAudioClip;
	public AudioClip wallHit;
	public AudioClip activated;
	public AudioClip lastActivated;
	public AudioClip cow;
	public AudioClip paula;
	public AudioClip doorOpens;
	public AudioClip wakeupSound;
	public AudioClip clickSound;

	public AudioClip flashingLights;
	public AudioClip flashingLightsLook;
	public AudioClip dontPress;
	public AudioClip pillarsSuspicious;
	
	
	public AudioClip[] wakeupAudioClips_Stage01;
	public AudioClip[] rubEyes_Stage01;
	public AudioClip[] rubEyes_Stage02;
	public AudioClip[] sleepingBeauty_Stage01;
	public AudioClip[] wallOfLights_Stage01;
	public AudioClip[] wallOfLights_Stage02;
	public AudioClip[] wallOfLightsOver_Stage01;
	public AudioClip[] locked_Stage01;
	public AudioClip[] locked_Stage02;
	public AudioClip[] goal_Stage01;
	public AudioClip[] goal_Stage02;
	
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	
	public AudioClip getWakeup_Stage01_AudioClip() {
		int index = Random.Range (0, this.wakeupAudioClips_Stage01.Length);
		return this.wakeupAudioClips_Stage01[index];
	}
	
	public AudioClip getRubEyes_Stage01_AudioClip() {
		int index = Random.Range (0, this.rubEyes_Stage01.Length);
		return this.rubEyes_Stage01[index];
	}
	
	public AudioClip getRubEyes_Stage02_AudioClip() {
		int index = Random.Range (0, this.rubEyes_Stage02.Length);
		return this.rubEyes_Stage02 [index];
	}
	
	public AudioClip getSleepingBeauty_Stage01_AudioClip() {
		int index = Random.Range (0, this.sleepingBeauty_Stage01.Length);
		return this.sleepingBeauty_Stage01 [index];
	}
	
	public AudioClip getWallOfLights_Stage01_AudioClip() {
		int index = Random.Range (0, this.wallOfLights_Stage01.Length);
		return this.wallOfLights_Stage01 [index];
	}
	
	public AudioClip getWallOfLights_Stage02_AudioClip() {
		int index = Random.Range (0, this.wallOfLights_Stage02.Length);
		return this.wallOfLights_Stage02 [index];
	}
	
	public AudioClip getWallOfLightsOver_Stage01() {
		int index = Random.Range (0, this.wallOfLightsOver_Stage01.Length);
		return this.wallOfLightsOver_Stage01 [index];
	}
	
	public AudioClip getLocked_Stage01_AudioClip() {
		int index = Random.Range (0, this.locked_Stage01.Length);
		return this.locked_Stage01 [index];
	}
	
	public AudioClip getLocked_Stage02_AudioClip() {
		int index = Random.Range (0, this.locked_Stage02.Length);
		return this.locked_Stage02 [index];
	}
	
	public AudioClip getGoal_Stage01_AudioClip() {
		int index = Random.Range (0, this.goal_Stage01.Length);
		return this.goal_Stage01 [index];
	}
	
	public AudioClip getGoal_Stage02_AudioClip() {
		int index = Random.Range (0, this.locked_Stage02.Length);
		return this.goal_Stage02 [index];
	}
}
