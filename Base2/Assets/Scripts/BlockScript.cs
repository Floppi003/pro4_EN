using UnityEngine;
using System.Collections;

public class BlockScript : MonoBehaviour {

	public float lostGazeTimer;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		lostGazeTimer -= 1 * Time.deltaTime;

		if (lostGazeTimer <= 0.0f) {
			this.GetComponent<Renderer>().material.color = Color.gray;

		}
	}
}
