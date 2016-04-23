using UnityEngine;
using System.Collections;

public class PlayMovie : MonoBehaviour
{
	private MovieTexture mtex;
	
	// Use this for initialization
	void Start ()
	{
		/*
		mtex = gameObject.renderer.material.mainTexture as MovieTexture;
		mtex.Play();
		*/
		((MovieTexture)GetComponent<Renderer> ().material.mainTexture).Play ();
	}
	/*
	// Update is called once per frame
	void Update ()
	{
		if (!mtex.isPlaying)
		{
			print("movie playing status: " + mtex.isPlaying + ".");
			mtex.Play();
		}
	}
	*/
}