using UnityEngine;
using System.Collections;

public class ColorButton : MonoBehaviour {

	public Material activeMaterial;
	public float lifetime = 1; // 0 = infinity
	public GameObject door;

	private Material oldMaterial;
	private Transform buttonFrame;
	private Transform buttonCenter;

	private float alive; 
	private bool pushed;

	// Use this for initialization
	void Start () {
		alive = 0;
		pushed = false;
		buttonFrame = this.transform.GetChild (1);
		buttonCenter = this.transform.GetChild (2);
		door = GameObject.Find ("Door ColorButtons");
		//defaultMaterial = this.transform.GetChild (1).GetChild(0).GetComponent<Renderer> ().material;
	}
	
	// Update is called once per frame
	void Update () {
		if (alive > 0) {
			alive -= Time.deltaTime;
			if (alive <= 0) {
				resetColor ();
			}
		}
	}

	private void changeColor(Transform obj) {
		string a = obj.name;
		//Debug.LogError (activeMaterial);
		//Debug.LogError (obj.GetComponent<Renderer> ());
		//Debug.LogError (obj.GetComponent<Renderer> ().material.name);

		oldMaterial = obj.GetComponent<Renderer> ().material;
		obj.GetComponent<Renderer> ().material = activeMaterial;
	}

	public void push() {
		if (!pushed) {
			// animate rein
			this.GetComponent<Animator> ().Play ("PushStay");

			pushed = true;
			alive = 0; 
			if (oldMaterial == null) {
				changeColor (buttonFrame);
			}
			changeColor (buttonCenter);

			door.GetComponent<ColorButtonManager>().pushButton(activeMaterial);
		} else {
			// animate raus
			this.GetComponent<Animator> ().Play ("Pop");
			door.GetComponent<ColorButtonManager>().popButton(activeMaterial);

			buttonCenter.GetComponent<Renderer> ().material = oldMaterial;
			pushed = false;
			alive = 0.001f;
		}
	}

	public void hit(Collider col) {
		if (!pushed) {
			alive = lifetime;
			if (oldMaterial == null) {
				// play audio sound
				AudioFilesLevel2 audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();
				AudioManager.instance.playSoundEffect (audioFiles.buttonGazedSound);

				changeColor (buttonFrame);
			}
		}
	}

	public void resetColor() {
		buttonFrame.GetComponent<Renderer> ().material = oldMaterial;
		buttonCenter.GetComponent<Renderer> ().material = oldMaterial;
		oldMaterial = null;
	}
}
