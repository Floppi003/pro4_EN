using UnityEngine;
using System.Collections;

public class InteractionDoor : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void playAnimation() {
		GetComponent<Animator> ().Play("move");
		Debug.LogError ("Open Door");
	}
}
