Shader "Custom/Subtractive" {
     SubShader {
         Tags { "Queue" = "Background-2000" } //"Background"
         Pass
          {
              Blend Zero One
              Lighting On
              ZWrite On
              Material
              {
                  Diffuse (0,0,0,0)
              }
          }
     } 
 }