using UnityEngine;
using System.Collections;

public class GazePanel : MonoBehaviour {

	public Color standardGazePanelColor = Color.gray;
	public Color highlightedGazePanelColor = Color.cyan;

	private float standardLeftHighlightTime = 0.15f;
	private float leftHighlightTime = 0.15f; //the current highlight time that is left before it will de-colorize

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		// check if highlight time is still above 0
		if (leftHighlightTime > 0.0f) {

			// decrease highlight time
			leftHighlightTime -= Time.deltaTime;

			// if highlight time went below 0 de-colorize panel
			if (leftHighlightTime <= 0.0f) {
				this.transform.FindChild ("pCube4").GetComponent<MeshRenderer>().material.color = this.standardGazePanelColor;
			}
		}
	}

	public void didGazePanel() {
		this.transform.FindChild ("pCube4").GetComponent<MeshRenderer> ().material.color = this.highlightedGazePanelColor;
		this.leftHighlightTime = this.standardLeftHighlightTime;
	}
}
