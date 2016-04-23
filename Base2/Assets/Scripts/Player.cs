using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

	public GameManager manager;
	public float moveSpeed;
	public GameObject deathParticles;
	public bool usesManager = true;

	private float maxSpeed = 5f;
	private Vector3 input;

	private Vector3 spawn;

	public AudioClip[] audioClip;


	// Use this for initialization
	void Start () {
		if (usesManager) 
		{
			manager = manager.GetComponent<GameManager>();
		}
		spawn = transform.position;
	}



	void FixedUpdate () {
		input = new Vector3(Input.GetAxisRaw ("Horizontal"), 0, Input.GetAxisRaw ("Vertical"));
		if(GetComponent<Rigidbody>().velocity.magnitude < maxSpeed)
		{
			GetComponent<Rigidbody>().AddRelativeForce(input * moveSpeed);
		}

		if (transform.position.y < -2)
		{
			Die ();
		}

		Physics.gravity = Physics.Raycast (transform.position, Vector3.down, 0.3f) ? Vector3.zero : new Vector3 (0, -9.5f, 0);
	}

	void OnCollisionEnter(Collision other)
	{
		if (other.transform.tag == "Enemy")
		{
			Die ();
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.transform.tag == "Enemy")
		{
			Die ();
		}
		if (other.transform.tag == "Token")
		{
			if(usesManager)
			{
			}
			PlaySound (0);
			Destroy(other.gameObject);
		}
		if (other.transform.tag == "Goal")
		{
			PlaySound (1);
			//Time.timeScale = 0f;
			manager.CompleteLevel();
		}
		if (other.transform.tag == "Respawn")
		{
			Debug.Log("Respawn hit");
			Die();
		}
	}

	void PlaySound(int clip)
	{
		GetComponent<AudioSource>().clip = audioClip [clip];
		GetComponent<AudioSource> ().Play ();
	}

	void Die()
	{
		PlaySound (1);
		Instantiate(deathParticles, transform.position, Quaternion.Euler(270,0,0));
		transform.position = spawn;
		Debug.Log("Respawn moved");
	}
}
