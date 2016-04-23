using UnityEngine;
using System.Collections;

[RequireComponent (typeof(CharacterController))]
public class FirstPersonController2 : MonoBehaviour {
	/*
	public Vector3 gravity = new Vector3(0,-9.81,0);
	public float movementSpeed = 5;

	private CharacterController cc;
	private Vector3 movement = new Vector3(0,0,0);

	void Start() {
		cc = GetComponent<CharacterController>();
	}


	public void Update() {	
		// handle input 
		Vector3 movement = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis ("Vertical"));

		// add movement
		cc.Move (movement * movementSpeed * Time.deltaTime);
		// add gravity
		cc.Move(gravity * Time.deltaTime);
	}

	public void setGravity(Vector3 gravity) {
		this.gravity = gravity;
	}


}
*/





























	public float movementSpeed = 8.0f; //movement speed of the character controller
	public float mouseSensivity = 1.5f; //camera speed (mouse)
	public float jumpStrength = 6.0f; //jump height - vertical distance
	public AudioClip helloClip;

	float verticalRotation = 0.0f; //current camera rotation
	public float upDownRange = 60.0f; //limit the camera movement upwards and downwards
	public float pushStrength; //strength used for pushing objects like boxes or balls
	
	public float extraGravity = 1.5f; //add to normal gravity to shorten the jump
	float verticalVelocity = 0; //current gravity of the player - changes during a jump

	CharacterController cc; //the controllable player element
	bool normalGravity = true; //whether it's normal or inverted gravity


	// Use this for initialization
	void Start () {
		Screen.lockCursor = true; //invisible/locked mouse cursor
		cc = GetComponent<CharacterController>();
	}
	
	// Update is called once per frame
	void Update () {
		// Rotation
		float rotLeftRight = Input.GetAxis("Mouse X") * mouseSensivity;
		transform.Rotate(0, rotLeftRight, 0);

		verticalRotation -= Input.GetAxis("Mouse Y") * mouseSensivity;
		//Debug.Log("Hello World!");
		verticalRotation = Mathf.Clamp (verticalRotation, -upDownRange, upDownRange);
		Camera.main.transform.localRotation = Quaternion.Euler(verticalRotation, 0, 0);

		// Movement
		float forwardSpeed = Input.GetAxis("Vertical") * movementSpeed;
		float sideSpeed = Input.GetAxis("Horizontal") * movementSpeed;

		//verticalVelocity += Physics.gravity.y * Time.deltaTime * extraGravity;

		if (cc.isGrounded) {
			verticalVelocity = Physics.gravity.y;
		} else {
			verticalVelocity += Physics.gravity.y * Time.deltaTime * extraGravity;
		}

		if (cc.isGrounded && Input.GetButtonDown ("Jump")) {
			verticalVelocity = jumpStrength;
		} 


		Vector3 speed = new Vector3(sideSpeed, verticalVelocity, forwardSpeed);
		//Vector3 speed = new Vector3(forwardSpeed, sideSpeed, verticalVelocity);
		
		speed = transform.rotation * speed;

		cc.Move(speed * Time.deltaTime);

		// Inverted Gravity - currently unused
		if (Input.GetKeyDown (KeyCode.G)) {
			normalGravity = !normalGravity;
		}
	}

	void OnControllerColliderHit(ControllerColliderHit hit) {
		//Debug.Log ("collided gameobject name: " + hit.collider.gameObject.name);
		if (hit.collider.gameObject.name.Equals ("AudioCollider")) {
			Debug.Log ("collided with audiocollider");
			//this.GetComponent<AudioSource>().PlayOneShot(helloClip);
		}

		Rigidbody body = hit.collider.attachedRigidbody;
		
		if (body == null || body.isKinematic) {
			///Debug.Log ("Body is null/kinematic");
			return;
		}
		
		if (hit.moveDirection.y < -0.3f) {
			Debug.Log ("Sphere moveDirection < -0.3f");
			return;
		}
		
		
		pushStrength = movementSpeed / 1.6f;
		
		Vector3 direction = new Vector3 (hit.moveDirection.x, 0, hit.moveDirection.z);
		body.velocity = direction * pushStrength;



		// change color
		//GetComponent<Renderer>().material.color = Color.red;

		//cc.Move (movementSpeed*Time.deltaTime);
	}
}

