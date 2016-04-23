using UnityEngine;
using System.Collections;

public class BridgeCollider_L3 : MonoBehaviour {
	
	public string objectName;
	
	void OnTriggerEnter(Collider other) {
	}
	
	void OnTriggerStay(Collider other) {

		// if it is the bridge, move the player slightly
		if (objectName.Equals ("Bridge")) {
			float randomNumber = Random.Range (-0.1f, 0.00f);
			Vector3 position = other.gameObject.transform.position;
			other.gameObject.transform.position = new Vector3 (position.x + randomNumber, position.y, position.z);
			
			// if it is the floor below the bridge, move the player back to the beginning
		}
	}
	
	void OnTriggerExit(Collider other) {	
	}

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}
}
