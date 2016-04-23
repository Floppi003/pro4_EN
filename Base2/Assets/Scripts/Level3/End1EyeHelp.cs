using UnityEngine;
using System.Collections;

public class End1EyeHelp : MonoBehaviour {

	GameObject middlePointDeathCollider;
	GameObject JPDeathCollider;

	// Use this for initialization
	void Start () {
		this.middlePointDeathCollider = GameObject.Find ("MiddleDeathSoundCollider");
		this.JPDeathCollider = GameObject.Find ("JPDeathSoundCollider");
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void onTriggerEnter() {
		this.middlePointDeathCollider.GetComponent<BoxCollider> ().enabled = false;
		this.JPDeathCollider.GetComponent<BoxCollider> ().enabled = true;
		this.gameObject.GetComponent<BoxCollider>().enabled = false;
	}
}
