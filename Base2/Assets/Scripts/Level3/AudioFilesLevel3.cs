using UnityEngine;
using System.Collections;

public class AudioFilesLevel3 : MonoBehaviour
{

	public AudioClip[] Bruecke;
	public AudioClip BrueckeGeschafft;
	public AudioClip MitteAugenkraft;
	public AudioClip[] HeyVertrauen;
	public AudioClip Stop;
	public AudioClip Wow;
	public AudioClip MitteAugenkraftRespawn;
	public AudioClip linkesRechtesAuge;
	public AudioClip aufpassen;


	public AudioClip getAudioClipBruecke() {
		int index = Random.Range (0, Bruecke.Length);
		return this.Bruecke[index];
	}

	public AudioClip getAudioClipHeyVertrauen() {
		int index = Random.Range (0, HeyVertrauen.Length);
		return this.HeyVertrauen [index];
	}
}

