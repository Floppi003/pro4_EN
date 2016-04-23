using UnityEngine;
using System.Collections;

public class BlackFades : MonoBehaviour
{
	private static BlackFades m_Instance = null;
	private Material m_Material = null;
	private bool m_Fading = false;
	
	private static BlackFades Instance
	{
		get
		{
			if (m_Instance == null)
			{
				m_Instance = (new GameObject("BlackFades")).AddComponent<BlackFades>();
			}
			return m_Instance;
		}
	}

	public static bool Fading
	{
		get { return Instance.m_Fading; }
	}
	
	private void Awake()
	{
		DontDestroyOnLoad(this);
		m_Instance = this;
		m_Material = new Material("Shader \"Plane/No zTest\" { SubShader { Pass { Blend SrcAlpha OneMinusSrcAlpha ZWrite Off Cull Off Fog { Mode Off } BindChannels { Bind \"Color\",color } } } }");
	}
	
	private void DrawQuad(Color aColor,float aAlpha)
	{
		aColor.a = aAlpha;
		m_Material.SetPass(0);
		GL.PushMatrix();
		GL.LoadOrtho();
		GL.Begin(GL.QUADS);
		GL.Color(aColor);   // moved here, needs to be inside begin/end
		GL.Vertex3(0, 0, -1);
		GL.Vertex3(0, 1, -1);
		GL.Vertex3(1, 1, -1);
		GL.Vertex3(1, 0, -1);
		GL.End();
		GL.PopMatrix();
	}
	
	private IEnumerator FadeInLoop(float aFadeInTime, Color aColor)
	{
		float t = 1.0f;

		while (t>0.0f)
		{
			yield return new WaitForEndOfFrame();
			t = Mathf.Clamp01(t - Time.deltaTime / aFadeInTime);
			DrawQuad(aColor,t);
		}
		m_Fading = false;
	}

	private IEnumerator FadeOutLoop(float aFadeOutTime, Color aColor)
	{
		float t = 0.0f;
		while (t<1.0f)
		{
			yield return new WaitForEndOfFrame();
			t = Mathf.Clamp01(t + Time.deltaTime / aFadeOutTime);
			DrawQuad(aColor,t);
		}
		m_Fading = false;
	}

	private IEnumerator FadeInOutLoop(float aFadeOutTime, float aFadeInTime, Color aColor) {
		// fade out
		float t = 0.0f;
		while (t<1.0f)
		{
			yield return new WaitForEndOfFrame();
			t = Mathf.Clamp01(t + Time.deltaTime / aFadeOutTime);
			DrawQuad(aColor,t);
		}

		// wait for x seconds
		float x = aFadeOutTime / 2.0f;
		while (x > 0.0f) {
			yield return new WaitForEndOfFrame();
			x -= Time.deltaTime;
			DrawQuad (aColor, 1.0f);
		}

		// fade in
		while (t>0.0f)
		{
			yield return new WaitForEndOfFrame();
			t = Mathf.Clamp01(t - Time.deltaTime / aFadeInTime);
			DrawQuad(aColor,t);
		}
		m_Fading = false;
	}

	private void FadeInStart(float aFadeInTime, Color aColor)
	{
		m_Fading = true;
		StartCoroutine(FadeInLoop(aFadeInTime, aColor));
	}

	private void FadeOutStart(float aFadeOutTime, Color aColor)
	{
		m_Fading = true;
		StartCoroutine(FadeOutLoop(aFadeOutTime, aColor));
	}

	private void FadeInOutStart(float aFadeInTime, float aFadeOutTime, Color aColor) {
		m_Fading = true;
		StartCoroutine (FadeInOutLoop (aFadeInTime, aFadeOutTime, aColor));
	}

	public static void FadeIn(float aFadeInTime, Color aColor)
	{
		if (Fading) return;
		Instance.FadeInStart(aFadeInTime, aColor);
	}

	public static void FadeOut(float aFadeOutTime, Color aColor)
	{
		if (Fading) return;
		Instance.FadeOutStart(aFadeOutTime, aColor);
	}

	public static void FadeInOut(float aFadeInTime, float aFadeOutTime, Color aColor) {
		if (Fading)
			return;
		Instance.FadeInOutStart (aFadeInTime, aFadeOutTime, aColor);
	}
}