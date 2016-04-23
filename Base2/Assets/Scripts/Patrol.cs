using UnityEngine;
using System.Collections;

public class Patrol : MonoBehaviour {
	public Transform[] patrolPoints;
	float moveSpeed = 8;
	private int currentPoint;
	private float currentPatrolPointDistance;

	// Use this for initialization
	void Start () {
		transform.position = patrolPoints[0].position;
		currentPoint = 0;
	}
	
	// Update is called once per frame
	void Update () {
		/*
		if (transform.position == patrolPoints[currentPoint].position)
		{
			currentPoint++;
		}

		if (currentPoint >= patrolPoints.Length)
		{
			currentPoint = 0;
			Debug.Log ("Reset Point" + currentPoint);
		}
		*/

		// calculate distance to next point
		float currentDistance = Vector3.Distance (transform.position, patrolPoints [currentPoint].position);
		float elapsedDistance = Mathf.Min (currentPatrolPointDistance - currentDistance, currentPatrolPointDistance);
		//Debug.Log ("elapsedDistacne: " + elapsedDistance);
		//Debug.Log ("currentDistance: " + currentDistance);
		//Debug.Log ("totalDistance: " + currentPatrolPointDistance);

		float easeIn = Mathf.Min(elapsedDistance / (currentPatrolPointDistance * 0.33f), 1);
		float easeOut = Mathf.Min (currentDistance / (currentPatrolPointDistance * 0.33f), 1);
		//Debug.Log ("easeIn: " + easeIn + ", easeOut: " + easeOut);

		transform.position = Vector3.MoveTowards(transform.position, patrolPoints[currentPoint].position, moveSpeed * Time.deltaTime * (easeIn + easeOut - 0.95f));
	}

	public void NextPatrolPoint(){
		// calculate distance to next patrol point
		currentPatrolPointDistance = Vector3.Distance (transform.position, patrolPoints[(currentPoint+1) % patrolPoints.Length].position);

		currentPoint++;

		if (currentPoint >= patrolPoints.Length)
		{
			currentPoint = 0;
			//Debug.Log ("Reset Point" + currentPoint);
		}
	}
}