using UnityEngine;
using System.Collections;

public class SplashScreenDelayed : MonoBehaviour {
	public float delayTime;
	public string nextLevel;

	void Awake(){
		BlackFades.FadeIn (1.0F, Color.black);
	}

	IEnumerator Start(){
		yield return new WaitForSeconds (delayTime);
		//Application.LoadLevel ("Central");

		PlayerPrefs.SetInt ("Level Unlocked", 1);
		PlayerPrefs.SetInt ("Current Level", 1);
		
		AutoFade.LoadLevel(nextLevel, 1, 1, Color.black);
		//levelname, fadeouttime, fadeintime, fadecolor
	}
}