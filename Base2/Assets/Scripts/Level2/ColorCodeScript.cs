using UnityEngine;
using System.Collections;

public class ColorCodeScript : MonoBehaviour {

	public Material exchangeMaterial;
	private Material temp;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void swapMaterials() {
		temp = this.GetComponent<Renderer> ().material;
		this.GetComponent<Renderer> ().material = exchangeMaterial;
		exchangeMaterial = temp;
	}
}
