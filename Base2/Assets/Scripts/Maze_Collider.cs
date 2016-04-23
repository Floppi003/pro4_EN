using UnityEngine;
using System.Collections;

public class Maze_Collider : MonoBehaviour {
	
	//public Vector3 angle;
	private float angle;
	private float playerViewAngle;
	private float angleDifference;

	public Camera cam;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frames
	void Update () {
	}
	
	void OnTriggerStay(Collider other) {
		if (other.tag == "Player") {
			//	Debug.Log ("Player detected");

			angle = transform.rotation.y;
			playerViewAngle = cam.transform.rotation.y;

			angleDifference = angle - playerViewAngle;

			if (angleDifference < -0.2) {
				Debug.Log("Du musst weiter nach links.");
			} else if (angleDifference > 0.2) { 
				Debug.Log("Du musst weiter nach rechts.");
			} else {
				Debug.Log("Genau richtig!");
			}
			//Debug.Log("View: " + playerViewAngle);
			//Debug.Log("Collider: " + angle);
			//Debug.Log("Angledifference: " + angleDifference);
			
		}
		//	Debug.Log ("OnTriggerStay");
	}
}