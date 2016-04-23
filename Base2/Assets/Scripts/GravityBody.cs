using UnityEngine;
using System.Collections;

[RequireComponent (typeof (Rigidbody))]
public class GravityBody : MonoBehaviour {
	
	public float gravity = -11f;
	public Vector3 gravityUp = new Vector3(0,1,0);

	GravityAttractor targetGravity;
	bool planetGravity = false;
	GameObject player;
	GameObject[] planets;
	GameObject targetPlanet;
	
	void Awake () {
		gravityUp = transform.up;
		
		planets = GameObject.FindGameObjectsWithTag ("Planet");
		if (planets.Length > 0) {
			planetGravity = true;
			
			player = GameObject.FindGameObjectWithTag ("Player");
			targetPlanet = planets [0];
			//planets = GameObject.FindGameObjectsWithTag("Planet").GetComponent<GravityAttractor>();
			//planet = GameObject.FindGameObjectWithTag("Planet").GetComponent<GravityAttractor>();
			
			// Disable rigidbody gravity and rotation as this is simulated in GravityAttractor script
			GetComponent<Rigidbody> ().useGravity = false;
			GetComponent<Rigidbody> ().constraints = RigidbodyConstraints.FreezeRotation;
			
			InvokeRepeating ("FindTargetPlanet", 2.0f, 0.5f);
		} else {
			GetComponent<Rigidbody>().freezeRotation = true;
		}
	}
	
	void FindTargetPlanet(){
		float targetDistance = Vector3.Distance (targetPlanet.transform.position, player.transform.position);	
		for(var i = 0; i < planets.Length; i++)
		{
			GameObject tmpPlanet = planets[i];
			float tmpDistance = Vector3.Distance (tmpPlanet.transform.position, player.transform.position);
			if(tmpDistance < targetDistance)
			{
				targetPlanet = tmpPlanet;
			}
		}
	}
	
	//FixedUpdate gets called at a regular interval independent from the framerate
	void FixedUpdate () {
		if (planetGravity) {
			targetGravity = targetPlanet.GetComponent<GravityAttractor> ();
			targetGravity.Attract (transform);
		} else {
			// Apply downwards gravity to body
			transform.GetComponent<Rigidbody> ().AddForce (gravityUp * gravity);
			// Allign bodies up axis with the centre of planet
			Quaternion targetRotation = Quaternion.FromToRotation (transform.up, gravityUp) * transform.rotation;
			float angularSpeed = 3.0f;
			if (transform.rotation != targetRotation) {
				//transform.rotation = Quaternion.Lerp (transform.rotation, targetRotation, angularSpeed);

				transform.rotation = Quaternion.RotateTowards (transform.rotation, targetRotation, angularSpeed);
					//print("Player: " + transform.rotation + ", target: " + targetRotation);
					//transform.Rotate(0, yAmount, 0, Space.Self);
			}
		}
		//linear interpolation
		//Zielposition über Zeitraum
	}
}