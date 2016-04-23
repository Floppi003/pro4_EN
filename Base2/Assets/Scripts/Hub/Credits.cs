using UnityEngine;
using System.Collections;

public class Credits : MonoBehaviour {

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.transform.tag == "Player")
		{
			MeshParticleEmitter[] particleEmitter = GameObject.Find("Credits").GetComponentsInChildren<MeshParticleEmitter>();

			foreach (MeshParticleEmitter emitter in particleEmitter) {
				emitter.emit = true;
			}
		}
	}

	void OnTriggerExit(Collider other)
	{
		if (other.transform.tag == "Player")
		{

			MeshParticleEmitter[] particleEmitter = GameObject.Find("Credits").GetComponentsInChildren<MeshParticleEmitter>();		
				foreach (MeshParticleEmitter emitter in particleEmitter) {
				emitter.emit = false;
			}
		}
	}
}
