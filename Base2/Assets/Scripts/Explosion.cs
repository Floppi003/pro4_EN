using UnityEngine;
using System.Collections;

public class Explosion : MonoBehaviour {
	public GameObject deathParticles;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void hit(Collider col) {
		Instantiate(deathParticles, transform.position, Quaternion.Euler(270,0,0));
		transform.position = new Vector3 (0.0f, -15.0f, 0.0f);
	}
}