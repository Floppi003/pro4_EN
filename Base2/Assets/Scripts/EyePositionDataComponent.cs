//-----------------------------------------------------------------------
// Copyright 2014 Tobii Technology AB. All rights reserved.
//-----------------------------------------------------------------------

using Tobii.EyeX.Framework;
using UnityEngine;
using System;
using System.Collections.Generic;

/// <summary>
/// Component that encapsulates a provider for <see cref="EyeXEyePosition"/> data.
/// </summary>
[AddComponentMenu("Tobii EyeX/Eye Position Data")]
public class EyePositionDataComponent : MonoBehaviour
{

	enum EyesOpened{None, Left, Right, Both};

    public FixationDataMode fixationDataMode;

    private EyeXHost _eyexHost;
    private IEyeXDataProvider<EyeXEyePosition> _dataProvider;
	private int eyesClosedCounter;
	private int leftEyeOpenedCounter;
	private int rightEyeOpenedCounter;



	private Queue<EyesOpened> eyesOpenedQueue;

    /// <summary>
    /// Gets the last eye position.
    /// </summary>
    public EyeXEyePosition LastEyePosition { get; private set; }

    protected void Awake()
    {
		eyesClosedCounter = 0;
        _eyexHost = EyeXHost.GetInstance();
        _dataProvider = _eyexHost.GetEyePositionDataProvider();
		eyesOpenedQueue = new Queue<EyesOpened> ();
    }

    protected void OnEnable()
    {
        _dataProvider.Start();
    }

    protected void OnDisable()
    {
        _dataProvider.Stop();
    }

    protected void Update()
    {
        LastEyePosition = _dataProvider.Last;

		// Get the last eye position.
		EyeXEyePosition lastEyePosition = GetComponent<EyePositionDataComponent>().LastEyePosition;

		if (lastEyePosition.IsValid) {
			// Get the position of the left eye.
			Vector3 leftEyePosition = new Vector3 (lastEyePosition.LeftEye.X,
			                                       lastEyePosition.LeftEye.Y,
			                                       lastEyePosition.LeftEye.Z);
			
			
			// The Eye Position of a closed eye will be (0, 0, 0)
			// Sometimes single eye positions can be (0, 0, 0) even though the eye was opened
			
			Vector3 rightEyePosition = new Vector3(lastEyePosition.RightEye.X,
			                                       lastEyePosition.RightEye.Y,
			                                       lastEyePosition.RightEye.Z);


			
			
			//Debug.Log ("leftEyePosition: " + leftEyePosition);
			//Debug.Log ("rightEyePosition: " + rightEyePosition);


			if (!lastEyePosition.LeftEye.IsValid && !lastEyePosition.RightEye.IsValid) {
				// Eyes closed
				this.eyesOpenedQueue.Enqueue (EyesOpened.None);
				eyesClosedCounter++;
				//Debug.Log ("!!! - !!! both eyes closed!!!!!!!!");

			} else if (lastEyePosition.LeftEye.IsValid && !lastEyePosition.RightEye.IsValid) {
				// only left eye is opened
				this.eyesOpenedQueue.Enqueue (EyesOpened.Left);

			} else if (!lastEyePosition.LeftEye.IsValid && lastEyePosition.RightEye.IsValid) {
				// only right eye is opened
				this.eyesOpenedQueue.Enqueue (EyesOpened.Right);

			} else {
				// both eyes opened
				this.eyesOpenedQueue.Enqueue (EyesOpened.Both);
				eyesClosedCounter = eyesClosedCounter / 3;
			}


			// calculate the amount of each eye-State in the queue!
			if (this.eyesOpenedQueue.Count > 30) {
				EyesOpened[] eyesOpenedArray = this.eyesOpenedQueue.ToArray();
				int noneCount = 0;
				int leftCount = 0;
				int rightCount = 0;
				int bothCount = 0;

				foreach (EyesOpened eyesOpened in eyesOpenedArray) {

					switch (eyesOpened) {
					case EyesOpened.None: {
						noneCount++;
						break;
					} 

					case EyesOpened.Left: {
						leftCount++;
						break;
					}

					case EyesOpened.Right: {
						rightCount++;
						break;
					}

					case EyesOpened.Both: {
						bothCount++;
						break;
					}
					}
				}


				/*Debug.Log ("leftEyePosition: " + leftEyePosition);
				Debug.Log ("rightEyePosition: " + rightEyePosition);
				Debug.Log ("leftEyeIsValid: " + lastEyePosition.LeftEye.IsValid);
				Debug.Log ("rightEyeIsValid: " + lastEyePosition.RightEye.IsValid);
				Debug.Log ("noneCount: " + noneCount);
				Debug.Log ("leftCount: " + leftCount);
				Debug.Log ("rightCount: " + rightCount);
				Debug.Log ("bothCont: " + bothCount);*/


				// check which left-eye / right-eye objects should be visible
				if (noneCount >= leftCount && noneCount >= rightCount && noneCount >= bothCount) {
					// "none" was most often recognized
					this.hideLeftEyeObjects ();
					this.hideRightEyeObjects ();
					//Debug.Log ("NONE");

				} else if (leftCount >= rightCount && leftCount >= bothCount) {
					// "left" was most often recognized
					this.showLeftEyeObjects ();
					this.hideRightEyeObjects ();
					//Debug.Log ("LEFT");

				} else if (rightCount >= bothCount) {
					// "right" was most often recognized
					this.hideLeftEyeObjects ();
					this.showRightEyeObjects ();
					//Debug.Log ("RIGHT");

				} else {
					// "both" was most often recognized
					this.hideLeftEyeObjects();
					this.hideRightEyeObjects();
					//Debug.Log ("BOTH");
				}

				// check if eyes were closed 
				if (leftCount == 0 && rightCount == 0 && bothCount == 0) {
					//Debug.Log ("EYES LONG CLOSED");

					// both eyes were closed for a while, if you are in felldown mode respawn
					FirstPersonController fps = GameObject.Find ("Player").GetComponent<FirstPersonController>();
/*-----------					AudioFilesLevelFloppi afFloppi = GameObject.Find ("AudioFilesLevelFloppi").GetComponent<AudioFilesLevelFloppi>();

					AudioSource audioSource = fps.gameObject.GetComponent<AudioSource>();

					if (afFloppi.fellofZone != AudioFilesLevelFloppi.FellofZone.None) {
						// respawn player
						fps.Die ();
						afFloppi.fellofZone = AudioFilesLevelFloppi.FellofZone.None;

						// after second try play sound after respawning
						if (afFloppi.bridgeFelldownCounter >= 2) {
							AudioManager.instance.queueAudioClip(afFloppi.getBridgeBeforeClip());
						}
					} */
				}

				this.eyesOpenedQueue.Dequeue ();
			}
			



			// check whether bridge should be broad or not
			// make bridge wider if both eyes are closed
			GameObject bridge = GameObject.Find ("bridge");

			if (eyesClosedCounter > 24) {
				bridge.transform.localScale = new Vector3(1, 1, 6);
				GameObject.Find ("BridgeCollider").GetComponent<BoxCollider>().enabled = false;
				//GetComponent<BridgeCollider>().enabled = false;
			} else {
				bridge.transform.localScale = new Vector3(1, 1, 1.0f);
				GameObject.Find ("BridgeCollider").GetComponent<BoxCollider>().enabled = true;
				//GetComponent<BridgeCollider>().enabled = true;
			}




			
		} else {
			//Debug.Log ("leftEyePosition INVALID!");
		}
    }


	private void showLeftEyeObjects() {
		GameObject[] leftEyeObjects = GameObject.FindGameObjectsWithTag ("LeftEye");
		
		foreach (GameObject leftEyeObject in leftEyeObjects) {
			//leftEyeObject.GetComponent<MeshCollider>().enabled = true;
			leftEyeObject.GetComponent<MeshRenderer>().enabled = true;
		}
	}

	private void showRightEyeObjects() {
		GameObject[] rightEyeObjects = GameObject.FindGameObjectsWithTag ("RightEye");
		
		foreach (GameObject rightEyeObject in rightEyeObjects) {
			//rightEyeObject.GetComponent<MeshCollider>().enabled = true;
			rightEyeObject.GetComponent<MeshRenderer>().enabled = true;
		}
	}

	private void hideLeftEyeObjects() {
		GameObject[] leftEyeObjects = GameObject.FindGameObjectsWithTag ("LeftEye");
		
		foreach (GameObject leftEyeObject in leftEyeObjects) {
			//leftEyeObject.GetComponent<MeshCollider>().enabled = false;
			leftEyeObject.GetComponent<MeshRenderer>().enabled = false;
		}
	}

	private void hideRightEyeObjects() {
		GameObject[] rightEyeObjects = GameObject.FindGameObjectsWithTag ("RightEye");
		
		foreach (GameObject rightEyeObject in rightEyeObjects) {
			//rightEyeObject.GetComponent<MeshCollider>().enabled = false;
			rightEyeObject.GetComponent<MeshRenderer>().enabled = false;
		}
	}

}
