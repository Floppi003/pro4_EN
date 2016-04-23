using UnityEngine;
using System.Collections;

public class HubLogo : MonoBehaviour {
	private float timer = 0.0F;
	public Material light;
	public Material dark;

	// Use this for initialization
	void Start () {	}

	void Update () {
		if (timer > 0) {
			timer -= Time.deltaTime;
			if(timer <= 0){
				transform.GetComponent<Renderer> ().material = light;
			}
		} 
	}
	
	public void hit(Collider col) {
			timer = 0.1F;
			transform.GetComponent<Renderer> ().material = dark;
	}
}