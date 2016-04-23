using UnityEngine;
using System.Collections;

public class LevelPortal : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerStay(Collider other) {
		if (other.tag == "Player") {
			Debug.Log ("Player detected");


			if (PlayerPrefs.GetInt("Chosen Level") == 1) {
				AutoFade.LoadLevel("Calibration" , 1, 1, Color.black);

			} else if(PlayerPrefs.GetInt ("Chosen Level") == 8){			
				AutoFade.LoadLevel("Level " + PlayerPrefs.GetInt("Chosen Level"), 1, 1, Color.white);
			}else{
				AutoFade.LoadLevel("Level " + PlayerPrefs.GetInt("Chosen Level"), 1, 1, Color.black);
			}
		}
		Debug.Log ("OnTriggerEnter");
		//other.gameObject.GetComponent<AudioSource> ().PlayOneShot (other.gameObject.GetComponent<FirstPersonController>().helloClip);
	}
}