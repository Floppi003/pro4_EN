using UnityEngine;
using System.Collections;

public class AudioButton : MonoBehaviour {
	
	public Material activeMaterial;
	public Material highlightMaterial;
	public float lifetime = 1; // 0 = infinity
	public GameObject door;
	public GameObject gazePoint;
	public float activationTime = 1;
	public float lockTime = 2;
	public float minActiveTime = 0.25f;
	
	private Material oldMaterial;
	private Transform buttonFrame;
	private Transform buttonCenter;

	private float active;

	private AudioFilesLevel2 audioFiles;
	private bool shouldAct = false;

	
	// Use this for initialization
	void Start () {
		active = 0;
		buttonFrame = this.transform.GetChild (1);
		buttonCenter = this.transform.GetChild (2);
		//door = GameObject.Find ("Door AudioButtons");
		this.audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (active > 0) {
			active -= Time.deltaTime;
			if (active <= 0) {
				buttonFrame.GetComponent<Renderer>().material = oldMaterial;
				oldMaterial = null;
				gazePoint.GetComponent<GazePointDataComponent>().active = true;
			}
		}
	}
	
	private void changeColor(Transform obj) {
		oldMaterial = obj.GetComponent<Renderer> ().material;
		
		obj.GetComponent<Renderer> ().material = highlightMaterial;
	}
	
	public void push() {
		// animate rein und wieder raus
		this.GetComponent<Animator> ().Play ("Push");
		// send to AudioButtonManager
		door.GetComponent<AudioButtonManager>().pushButton(activeMaterial);

		GameObject.Find ("R3Handler").GetComponent<L2_R3Handler> ().didPressAudioButton ();
	}
	
	public void hit(Collider col) {
		if (!shouldAct)
			return;

		if (active <= activationTime) {
			active += 2 * Time.deltaTime;
			
			if (oldMaterial == null) {
				door.GetComponent<AudioButtonManager>().hitButton(activeMaterial);

				changeColor (buttonFrame);
				active = minActiveTime;
			}
			
			if(active >= activationTime) {
				active = lockTime;
				gazePoint.GetComponent<GazePointDataComponent>().active = false;

				switch (activeMaterial.name) {
				case "Red":
					AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Rot());
					break;
					
				case "Green":
					AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Gruen());
					break;
					
				case "Blue":
					AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Blau());
					break;
					
				case "Orange":
					AudioManager.instance.playAudioClipIfFree (this.audioFiles.getAudioClipR3_Gelb());
					break;
				}
			}
		}
	}

	public void setShouldAct(bool shouldAct) {
		this.shouldAct = shouldAct;
	}
}
