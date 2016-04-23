using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class CameraRaycast : MonoBehaviour {

	public GameObject hintMenu;
	public Camera cam;
	private RaycastHit interactionRaycastHit;
	private string loadPrompt;
	private bool showHint = false;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		Debug.DrawRay (cam.transform.position, cam.gameObject.transform.forward, Color.cyan, 3);
		if (Physics.Raycast (cam.transform.position, cam.gameObject.transform.forward, out interactionRaycastHit, 3)) {
		
			if (interactionRaycastHit.collider.gameObject.tag == "Interaction") {
				loadPrompt = "[F]  Knopf drücken";
				showHint = true;
				interactionRaycastHit.collider.gameObject.GetComponent<InteractionButton>().ButtonPressed();

				if(Input.GetButtonDown ("ButtonPressed")) {
					if (interactionRaycastHit.collider.gameObject.transform.parent.name == "GoalButton") {
						interactionRaycastHit.collider.gameObject.GetComponent<InteractionButton>().TriggerGoal();
					}else if (interactionRaycastHit.collider.gameObject.transform.parent.name == "PlatformButton") {
						interactionRaycastHit.collider.gameObject.GetComponent<InteractionButton>().TriggerPlatform();
					}else if (interactionRaycastHit.collider.gameObject.transform.parent.name == "DoorButton") {
						interactionRaycastHit.collider.gameObject.GetComponent<InteractionButton>().TriggerDoor();
					}
				}

			} else if (interactionRaycastHit.collider.gameObject.tag == "LevelButton"){
				loadPrompt = interactionRaycastHit.collider.gameObject.GetComponent<LevelLoaderNew>().GetText ();
				showHint = true;
				if(Input.GetButtonDown ("ButtonPressed")) {
					interactionRaycastHit.collider.gameObject.GetComponent<LevelLoaderNew>().LevelButtonPressed();
				}

			} else if(interactionRaycastHit.collider.gameObject.tag == "ColorButton") { 	// Color Buttons
				loadPrompt = "[F]  Knopf drücken";
				showHint = true;
				if(Input.GetButtonDown ("ButtonPressed")) {
					interactionRaycastHit.collider.gameObject.GetComponent<ColorButton>().push();
				}
			} else if(interactionRaycastHit.collider.gameObject.tag == "AudioButton") { 	// Color Buttons
				loadPrompt = "[F]  Knopf drücken";
				showHint = true;
				if(Input.GetButtonDown ("ButtonPressed")) {
					interactionRaycastHit.collider.gameObject.GetComponent<AudioButton>().push();
				}
			} else if(interactionRaycastHit.collider.gameObject.tag == "AudioColorButton") { 	// Color Buttons
				loadPrompt = "[F]  Knopf drücken";
				showHint = true;
				if(Input.GetButtonDown ("ButtonPressed")) {
					interactionRaycastHit.collider.gameObject.GetComponent<AudioColorButton>().push();
				}
			}else {
				loadPrompt = "";
				showHint = false;
			}
	
		} else {
			loadPrompt = "";
			showHint = false;
		}


		if (showHint) {
			hintMenu.GetComponent<Canvas>().enabled = true;
			Text hintText = hintMenu.transform.Find("Panel").Find("HintText").GetComponent<Text>();
			hintText.text = loadPrompt;
		} else {
			hintMenu.GetComponent<Canvas>().enabled = false;
		}
	}

	void getActionButton () {
		Input.GetButtonDown ("ButtonPressed");

	}
}