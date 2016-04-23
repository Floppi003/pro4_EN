using UnityEngine;
using System.Collections;

public class AudioButtonManager : MonoBehaviour {

	public Material[] colorCode; 
	
	private AudioFilesLevel2 audioFiles;

	private int counter;
	private bool open;
	private bool counterEnabled = false;

	private GameObject[] code = new GameObject[5];

	// Use this for initialization
	void Start () {
		counter = 0;
		open = false;
		audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();

		for (int i = 0; i < 5; i++) {
			code[i] = GameObject.Find ("CodeCube" + (i+1));
		}
	}
	
	// Update is called once per frame
	void Update () {
	}

	public void pushButton(Material mat) {
		// add pushed button to counter
		if (open) {return;}
		if (!this.counterEnabled) {Debug.Log ("counter disabled!"); return;}

		if (colorCode[counter] == mat) {
			code[counter].GetComponent<ColorCodeScript>().swapMaterials();
			counter++;
			if (counter == colorCode.Length) {
				this.GetComponent<Door>().move = true;
				open = true;
				AudioManager.instance.playAudioClipForced (audioFiles.getAudioClipR3_Geschafft());
			}
		} else {
			while(counter > 0) {
				counter--;
				code[counter].GetComponent<ColorCodeScript>().swapMaterials();
			}
			//TODO: change audio
			AudioManager.instance.playSoundEffect (audioFiles.buttonPressedSound);
			// TODO: Play Error Sound
		}
	}

	public void hitButton(Material mat) {		
		// play audio sound
		AudioManager.instance.playSoundEffect (audioFiles.buttonGazedSound);
	}

	public void enableCounter() {
		Debug.Log ("counter enabled!");
		this.counterEnabled = true;
	}

	public void resetCounter() {
		while(counter > 0) {
			counter--;
			code[counter].GetComponent<ColorCodeScript>().swapMaterials();
		}
	}
}
