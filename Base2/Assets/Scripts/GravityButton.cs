using UnityEngine;
using System.Collections;

public class GravityButton : MonoBehaviour {
	private float timer = 0.0F;
	public Vector3 gravityVector;
	private GravityBody player;
	ParticleSystem particles;

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player").GetComponent<GravityBody>();		
		particles = transform.parent.Find ("GravityParticles").GetComponent<ParticleSystem>();
		particles.enableEmission = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (timer > 0) {
			timer -= Time.deltaTime;
			if(timer <= 0){
				particles.enableEmission = false;
			}
		} 
	}

	public void hit(Collider col) {
		timer = 2.0F;
		particles.enableEmission = true;
	}

	void OnTriggerStay(Collider other) {
		if (other.tag == "Player") {
			player.gravityUp=gravityVector;
		}
		//other.gameObject.GetComponent<AudioSource> ().PlayOneShot (other.gameObject.GetComponent<FirstPersonController>().helloClip);
	}
}
