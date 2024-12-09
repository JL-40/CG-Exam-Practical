Shader "Custom/ScrollingTexture"
{
   Properties
   {
        _MainTex ("Water Texture", 2D) = "white" {}
        
        _Amp ("Amplitude", float) = 0.5
        _Freq ("Frequency", float) = 1.0
        _Spd ("Speed", float) = 1.0

        _ScrollX ("ScrollX", Range(-5,5)) = 1
        _ScrollY ("ScrollY", Range(-5,5)) = 1
   }
   SubShader
   {
        
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc" 

            
            float _Amp;
            float _Freq;
            float _Spd;

            float _ScrollX;
            float _ScrollY;

            sampler2D _MainTex;
            
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;  
            };

            
            struct v2f
            {
                float4 pos : POSITION;
                float2 uv : TEXCOORD0;
            };

            
            v2f vert(appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;

                return o;
            }

            half4 frag(v2f i) : SV_Target
            {
                _ScrollX *= _Time;
                _ScrollY *= _Time;
                half4 water = (tex2D (_MainTex, i.uv + float2(_ScrollX, _ScrollY)));
                half4 texColor = tex2D(_MainTex, i.uv);

                return water;
            }
            ENDCG
        }
   }
}