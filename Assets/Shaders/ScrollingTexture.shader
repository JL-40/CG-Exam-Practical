Shader "Custom/ScrollingTexture"
{
    Properties
    {
        _MainTex ("Water Texture", 2D) = "white" {}
        _ScrollX ("ScrollX", Range(-5,5)) = 1
        _ScrollY ("ScrollY", Range(-5,5)) = 1
    }

    SubShader 
    {    
       CGPROGRAM
       #pragma surface surf Lambert
       
       float _ScrollX;
       float _ScrollY;

       sampler2D _MainTex;

       struct Input
       {
           float2 uv_Maintex;
       };

       void surf (Input IN, inout SurfaceOutput o)
       {
           _ScrollX *= _Time;
           _ScrollY *= _Time;
           float newuv = IN.uv_Maintex + float2(_ScrollX, _ScrollY);
           o.Albedo = tex2D(_MainTex, newuv);
       }
       ENDCG
    }
    Fallback "Diffuse"
}
