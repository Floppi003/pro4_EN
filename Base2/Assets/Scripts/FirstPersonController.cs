using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

[RequireComponent (typeof (GravityBody))]
public class FirstPersonController : MonoBehaviour {
	// stair grounded
	private RaycastHit stairRaycast;
	bool firstStairCast = false;
	private RaycastHit stairRaycast2;
	bool secondStairCast = false;
	
	// head bob movement
	float minimum = 0.624F;
	float maximum = 0.67F;
	float time = 0;
	float duration = 3.2F;
	bool upwards = true;

	// references
	public GameManager manager;
	private Vector3 spawn;
	public Vector3 spawnGravity = new Vector3(0,1,0);
	public Quaternion spawnRotation;
	
	// public vars
	public float mouseSensitivityX = 250;
	public float mouseSensitivityY = 250;
	public float jumpCD = 0.0F;
	public float walkSpeed = 6; //movement/walking speed
	public float jumpForce = 260; //jump height/strength
	public float jumpDamping = 3.5f; // reduced movement while jumping
	public LayerMask groundedMask; //mask for raytracing/jumping - reference plane for the raycast#

	// ---- jump width tests
	public float jumpHeight = 0;
	public float jumpWidth = 0;
	private Vector3 jumpStart;
	private Vector3 jumpEnd;
	private Vector3 lastPos = new Vector3(0,0,0);
	private float timePassed = 0;
	public float speed = 0;
	public bool inAir;
	public bool debug = true;

	// General Audio
	private AudioSource audioSource;
	private GeneralAudioFiles audioFiles;
	private Queue<float> walkingDistanceQueue;
	private Vector3 previousPosition;
	private float timeSinceLastButtonAudioPlay = 0.0f;

	// System vars
	bool grounded;
	Vector3 moveAmount;
	Vector3 smoothMoveVelocity;
	float verticalLookRotation;
	Transform cameraTransform;

	// find out if player is inactive for 30 seconds or more (to get back to the HUB)
	private float inactiveSeconds = 0.0f;
	private float maxInactiveSeconds = 50.0f;
	private float lastMouseX = 0.0f;
	private float lastMouseY = 0.0f;
	private GameObject inactiveText;
	
	void Start() { //Awake
		Cursor.visible = false;
		Screen.lockCursor = true;
		cameraTransform = Camera.main.transform;
		spawn = transform.position;
		previousPosition = transform.position;
		walkingDistanceQueue = new Queue<float> ();
		walkingDistanceQueue.Enqueue (0.0f);
		walkingDistanceQueue.Enqueue (0.0f);
		walkingDistanceQueue.Enqueue (0.0f);
		walkingDistanceQueue.Enqueue (0.0f);
		walkingDistanceQueue.Enqueue (0.0f);

		this.audioSource = GetComponent<AudioSource> ();
		this.audioFiles = GetComponent<GeneralAudioFiles> ();

		spawnRotation = transform.rotation;

		this.inactiveText = GameObject.Find ("InactiveText");
	}

	private void OnGUI()
	{
		// Draw the title.
		//GuiHelpers.DrawText("CALIBRATION", new Vector2(10, 10), 36, GuiHelpers.Magenta);
		/*if (GUI.Button(new Rect(10, 70, 150, 30), "Recalibrate"))
		{

		}*/

		//GUI.Box (new Rect (10, 70, 150, 30), "You have been inactive for quite a while. Game will reset automatically soon.");

	}

	void Update() {
		// test for footstep sound
		/*
		Vector3 distance = transform.position - previousPosition;
		previousPosition = transform.position;

		// enqueue the current distance
		walkingDistanceQueue.Enqueue (distance.magnitude);

		// sum up the walking Distance
		float[] walkingDistanceArray = walkingDistanceQueue.ToArray ();
		float totalWalkingDistance = 0.0f;
		foreach (float walkingDistance in walkingDistanceArray) {
			totalWalkingDistance += walkingDistance;
		}

		// calculate average
		float averageWalkingDistance = totalWalkingDistance / walkingDistanceQueue.Count;
*/

		// check if player was inactive
		float thisMouseX = Input.GetAxis ("Mouse X");
		float thisMouseY = Input.GetAxis ("Mouse Y");

		if (thisMouseX == this.lastMouseX &&
			thisMouseY == this.lastMouseY) {

			this.inactiveSeconds += Time.deltaTime;
		} else {
			this.inactiveSeconds = 0.0f;
		}

		// if too long inactive, show the warning on the bottom of the screen
		if (this.inactiveSeconds > this.maxInactiveSeconds - 10) {
			this.inactiveText.GetComponent<Text> ().enabled = true;
		} else {
			this.inactiveText.GetComponent<Text>().enabled = false;
		}

		// if too long inactive, go back to HUB
		if (this.inactiveSeconds > this.maxInactiveSeconds) {
			AutoFade.LoadLevel("Central" , 1, 1, Color.black);
		}




		// play the walking sound if player walked enough
		if (IsGrounded() && ((Input.GetAxisRaw("Vertical")!= 0) || Input.GetAxisRaw("Horizontal")!= 0)) {
			if (audioSource.isPlaying == false) {
				this.audioSource.Play ();
			}
		} else {
			this.audioSource.Stop ();
		}

		// dequeue a walkingdistance
//		walkingDistanceQueue.Dequeue ();


		timeSinceLastButtonAudioPlay += Time.deltaTime;
		// set dampig dependend if grounded or not
		float damping;
		if (IsGrounded()) {
			damping = 1;
		} else {
			damping = jumpDamping;
		}
		// Look rotation:
		transform.Rotate(Vector3.up * Input.GetAxis("Mouse X") * mouseSensitivityX * Time.deltaTime);
		verticalLookRotation += Input.GetAxis("Mouse Y") * mouseSensitivityY * Time.deltaTime;
		verticalLookRotation = Mathf.Clamp(verticalLookRotation,-60,80);
		cameraTransform.localEulerAngles = Vector3.left * verticalLookRotation;
		
		// Calculate movement:
		float inputX = Input.GetAxisRaw("Horizontal");
		float inputY = Input.GetAxisRaw("Vertical");
		
		Vector3 moveDir = new Vector3(inputX, 0, inputY).normalized;
		Vector3 targetMoveAmount = moveDir * walkSpeed;
		
		moveAmount = Vector3.SmoothDamp (moveAmount, targetMoveAmount, ref smoothMoveVelocity, 0.15f * damping); //ref allows to modify a global variable
		
		// Jump
		if (debug && inAir && GetComponent<Rigidbody> ().position.y <= 1.0001f) {
			inAir = false;
			jumpEnd = GetComponent<Rigidbody> ().position; //-----------
			jumpWidth = (jumpEnd - jumpStart).magnitude;
		}
		
		if (Input.GetButtonDown("Jump") && jumpCD <= 0) {
			if (IsGrounded()) {
				jumpStart = GetComponent<Rigidbody>().position; //-----------
				inAir = true;
				GetComponent<Rigidbody>().AddForce(transform.up * jumpForce);

				// also play audio sound
				AudioManager.instance.playSoundEffect(audioFiles.jumpSound);

				jumpCD = 0.3F;
			}
		}

		//----------------
		if (debug) {
			if (Time.time > 3 && jumpHeight <= GetComponent<Rigidbody> ().position.y - 1) { //-----------
				jumpHeight = GetComponent<Rigidbody> ().position.y - 1; 
			}
			
			if (timePassed >= 1) {
				speed = (transform.position - lastPos).magnitude / timePassed;
				timePassed = 0;
				lastPos = transform.position;
			}
			timePassed += Time.deltaTime;
		}




		/////////

		if (IsGrounded () && ((Input.GetAxisRaw("Vertical")!= 0) || Input.GetAxisRaw("Horizontal")!= 0)) {
			if (upwards) {
				cameraTransform.localPosition += new Vector3 (0, Time.deltaTime/duration, 0);
				float yPos = cameraTransform.localPosition.y;
				if(yPos >= maximum){
					upwards = false;
					time = 0;
				}
			}else{
				cameraTransform.localPosition -= new Vector3 (0, Time.deltaTime/duration, 0);
				float yPos = cameraTransform.localPosition.y;
				if(yPos <= minimum){
					upwards = true;
					time = 0;
				}
			}
		}

		if (jumpCD > 0) {
			jumpCD -= Time.deltaTime;
		}
	}
	
	bool IsGrounded ()
	{
		//Physics.Raycast(ray, out hit, 1 + .2f, groundedMask
		bool ground = Physics.Raycast (transform.position, - transform.up, 1 + 0.3f, groundedMask);
		return (ground || IsStairGrounded ()); //letzter Parameter groundedMask
	}

	bool IsStairGrounded(){ 
		Vector3 second  = transform.position;
		second.x += 0.05F;
		if (Physics.Raycast (transform.position, -transform.up, out stairRaycast, 1.5F) &&
		        (stairRaycast.collider.gameObject.name == "Slope Collider")) {
				firstStairCast = true;
		} else {
			firstStairCast = false;
		}

		if (Physics.Raycast (second, -transform.up, out stairRaycast2, 1.5F) &&
		    (stairRaycast2.collider.gameObject.name == "Slope Collider")) {
			secondStairCast = true;
		}else{
			secondStairCast = false;
		}

		if(secondStairCast && firstStairCast){
			return true;
		}
		return false;
	}

	void FixedUpdate() {
		// Apply movement to rigidbody
		Vector3 localMove = transform.TransformDirection(moveAmount) * Time.deltaTime; //transform to local space (instead of world space - move on the surface of the sphere)
		GetComponent<Rigidbody>().MovePosition(GetComponent<Rigidbody>().position + localMove);
	}
	
	void OnTriggerEnter(Collider other)
	{
		if (other.transform.tag == "Enemy")
		{
			FadeDie();
		}
		if (other.transform.tag == "Goal")
		{
			manager.CompleteLevel();
		}
		if (other.transform.tag == "SavePoint")
		{
			spawn = other.transform.position;
			spawnGravity = transform.GetComponent<GravityBody>().gravityUp;
			spawnRotation = transform.rotation;
		}
	}

	void OnTriggerStay(Collider other)
	{
		if (other.transform.tag == "SavePoint")
		{
			spawn = other.transform.position;
			spawnGravity = transform.GetComponent<GravityBody>().gravityUp;
			spawnRotation = transform.rotation;
		}
	}

	public void FadeDie()
	{	
		BlackFades.FadeInOut (1.0f, 1.0f, Color.black);
		Invoke ("Die", 1.0f);

	}

	public void Die()
	{	
		transform.GetComponent<GravityBody> ().gravityUp = spawnGravity;
		transform.rotation = spawnRotation;
		transform.position = spawn;
		transform.GetComponent<Rigidbody> ().velocity = new Vector3 (0,0,0);	
		
		BlackFades.FadeIn (1, Color.black);
	}
	
	public void ChangeMouseSensitivity(float sensitivity){
		mouseSensitivityX = sensitivity;
		mouseSensitivityY = sensitivity;
		string sensitivityString = sensitivity.ToString ();	
		PlayerPrefs.SetFloat("Sensitivity", sensitivity);
	}
}