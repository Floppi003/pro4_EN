using UnityEngine;
using System.Collections;

public class AudioFilesLevel2 : MonoBehaviour {

	public AudioClip firstRiddleSuccessSound;
	public AudioClip platformMovingSound;
	public AudioClip buttonPressedSound;
	public AudioClip buttonReleasedSound;
	public AudioClip buttonGazedSound;
	public AudioClip doorOpenSound;



	// Sonny Voice Clips
	public AudioClip L2_Start;
	public AudioClip[] R1_DrueckDenSchalter;
	public AudioClip R1_Schalter;
	public AudioClip R2_GuteAlteSchalter;
	public AudioClip R2_Start;
	public AudioClip R3_Start;
	public AudioClip R3_BlauerSchalter;
	public AudioClip Bombenentschaerfer;
	public AudioClip[] R3_Blau;
	public AudioClip[] R3_Gelb;
	public AudioClip[] R3_Gruen;
	public AudioClip[] R3_Rot;
	public AudioClip[] R3_Geschafft;
	public AudioClip R3_Planaenderung;
	public AudioClip R3_ZuerstBlau;
	public AudioClip R4_MengeSchalter;
	public AudioClip R4_ReiseGehtWeiter;
	public AudioClip R4_SchonBesser;
	public AudioClip R4_SoWirdDasNix;
	public AudioClip R4_NurRoteButtons;

	public AudioClip getAudioClipR1_DrueckDenschalter() {
		int index = Random.Range (0, this.R1_DrueckDenSchalter.Length);
		return this.R1_DrueckDenSchalter [index];
	}

	public AudioClip getAudioClipR3_Blau() {
		int index = Random.Range (0, this.R3_Blau.Length);
		return this.R3_Blau [index];
	}

	public AudioClip getAudioClipR3_Gelb() {
		int index = Random.Range (0, this.R3_Gelb.Length);
		return this.R3_Gelb [index];
	}

	public AudioClip getAudioClipR3_Gruen() {
		int index = Random.Range (0, this.R3_Gruen.Length);
		return this.R3_Gruen [index];
	}

	public AudioClip getAudioClipR3_Rot() {
		int index = Random.Range (0, this.R3_Rot.Length);
		return this.R3_Rot [index];
	}

	public AudioClip getAudioClipR3_Geschafft() {
		int index = Random.Range (0, this.R3_Geschafft.Length);
		return this.R3_Geschafft[index];
	}
}
