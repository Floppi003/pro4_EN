using UnityEngine;
using System.Collections;

public class LevelLoaderNew : MonoBehaviour {
	public int levelToLoad;
	public GameObject padlock;
	private string loadPrompt;
	//private bool inRange;
	private int unlockedLevel = 1;
	private bool canLoadLevel = true;
	private string doorText;

	void Start()
	{
		unlockedLevel = PlayerPrefs.GetInt ("Level Unlocked");

		if (unlockedLevel == 0) 
		{
			unlockedLevel = 1;
		}

		PlayerPrefs.SetInt("Chosen Level", unlockedLevel);
		doorText = "Level " + unlockedLevel + " fortsetzen";
		GameObject.Find("ContinueDoor").GetComponent<TextMesh>().text = doorText;

		canLoadLevel = levelToLoad <= unlockedLevel ? true : false;

		// if it is level 8 (meaning it is the calibration scene) then allow it as well
		if (levelToLoad == 8) canLoadLevel = true;

		if (canLoadLevel) {
			//Instantiate (padlock, new Vector3(transform.position.x - 0.7f, 1.5f, transform.position.z), Quaternion.identity);
			MeshRenderer rendererLock = transform.Find ("pCube1").Find ("LevelLock").GetComponent<MeshRenderer> ();
			rendererLock.enabled = false;
			MeshRenderer rendererWhite = transform.Find ("pCube1").Find ("LevelWhite").GetComponent<MeshRenderer> ();
			rendererWhite.enabled = false;
		} else {
			MeshRenderer rendererNumber = transform.Find ("pCube1").Find ("LevelNumber").GetComponent<MeshRenderer> ();
			rendererNumber.enabled = false;
		}
	}

	public void LevelButtonPressed()
	{
		if (canLoadLevel) {
			if (levelToLoad.ToString () == "8") {	//Reset Game
				PlayerPrefs.DeleteAll (); // use this to clear your PlayerPrefs
				//PlayerPrefs.SetInt("Level Unlocked", 1);
				//PlayerPrefs.SetInt ("Current Level", 1);	
				AutoFade.LoadLevel(levelToLoad , 1, 1, Color.black);
			} else {
				PlayerPrefs.SetInt ("Current Level", levelToLoad);
				PlayerPrefs.SetInt("Chosen Level", levelToLoad);
				doorText = "Level " + levelToLoad.ToString() + " starten";				
				GameObject.Find("ContinueDoor").GetComponent<TextMesh>().text = doorText;
			}	
			playAnimation();
		}
	}

	public string GetText(){
		string levelText = "";
		if (levelToLoad.ToString () == "0") {
			levelText = "[F]  Spielstand löschen";
		}else if (canLoadLevel) {
			if (levelToLoad == 8) {
				levelText = "[F] Spiel starten";
			} else {
				levelText = "[F]  Level " + levelToLoad.ToString () + " laden";
			}

		} else {
			levelText = "Level gesperrt";
		}
		return levelText;
	}

	void playAnimation() {
		GetComponent<Animator> ().Play("Push");
	}
}