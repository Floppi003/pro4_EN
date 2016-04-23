using UnityEngine;
using System.Collections;

public class Trap : MonoBehaviour {
	public float delayTime;

	// Use this for initialization
	void Start () {
		StartCoroutine(Go ());
	}

	IEnumerator Go()
	{
		while(true)
		{
			GetComponent<Animation>().Play ();
			yield return new WaitForSeconds(3f);
		}
	}
}
