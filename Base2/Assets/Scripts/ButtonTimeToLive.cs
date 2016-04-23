using UnityEngine;
using System.Collections;

public class ButtonTimeToLive : Object {

	public GameObject button;
	public float timeToLive;

	public ButtonTimeToLive(GameObject button, float timeToLive) {
		this.button = button;
		this.timeToLive = timeToLive;
	}
}
