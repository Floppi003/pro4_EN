using UnityEngine;
using System.Collections;

public class ColorButtonManager : MonoBehaviour {

	public Material[] colors;
	public int goalColor;
	public int goalNumber;

	private int[] counter;
	private bool open;

	private bool didPlay = false;

	// Use this for initialization
	void Start () {
		counter = new int[colors.Length];
		open = false;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void pushButton(Material mat) {
		int i;
		// add pushed button to counter
		for (i = 0; i < colors.Length; i++) {
			if (colors[i] == mat) {
				counter[i]++;
				break;
			}
		}
		
		validateCounter ();
	}

	public void popButton(Material mat) {
		// add pushed button to counter
		for (int i = 0; i < colors.Length; i++) {
			if (colors[i] == mat) {
				counter[i]--;
				break;
			}
		}

		validateCounter ();
	}

	private void validateCounter() {
		// check if goalColor has enough buttons
		if (counter[0] == goalNumber) {
			open = true;
			// if so check if others are 0
			for (int i = 1; i < counter.Length; i++) {
				if (counter[i] != 0) {
					open = false;

					// play audio clip that only red buttons should be pressed
					if (!this.didPlay) {
						AudioFilesLevel2 audioFiles = GameObject.Find ("GM").GetComponent<AudioFilesLevel2>();
						AudioManager.instance.queueAudioClip(audioFiles.R4_NurRoteButtons, 3);
					}

					break;
				}
			}
			
			if (open == true) {
				this.GetComponent<Door>().move = true;
			}
		}
	}
}
