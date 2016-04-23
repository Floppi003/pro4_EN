using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {
	public GUISkin skin;

	void OnGUI()
	{
		GUI.skin = skin;
		GUI.Label (new Rect(10,10, 400,75), "Go Home");
		if (PlayerPrefs.GetInt("Level Unlocked") > 1)
		{
			if (GUI.Button(new Rect(10,100,100,45), "Select Level"))
			{
				Application.LoadLevel("world_select");
				//Application.LoadLevel(PlayerPrefs.GetInt("Level Unlocked"));
			}
		}
		if (GUI.Button(new Rect(10,155,100,45), "New Game"))
		{
			PlayerPrefs.SetInt("Level Unlocked", 1);
			PlayerPrefs.SetInt ("Current Level", 1);
			Application.LoadLevel("Level 1");
		}
		if (GUI.Button(new Rect(10,210,100,45), "Quit"))
		{
			Application.Quit ();
		}
	}
}