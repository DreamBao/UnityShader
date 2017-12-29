Shader "Cartoon/Diffuse_OutLine" {
	Properties{
		_MainTex("Base (RGB)", 2D) = "white" {}
		_Outline_Width("Outline_Width", Range(0, 1)) = 0
		_Outline_Color("Outline_Color", Color) = (0.5,0.5,0.5,1)
		_Color("MainColor", Color) = (0.5,0.5,0.5,1)
	}
	SubShader{
		Tags{ "RenderType" = "Opaque" }
		LOD 100
			CGPROGRAM
			#pragma surface surf Lambert noforwardadd

			sampler2D _MainTex;
			float4 _Color;
			struct Input {
				float2 uv_MainTex;
			};

			void surf(Input IN, inout SurfaceOutput o) {
				fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
				o.Albedo = c.rgb * _Color.xyz;
				o.Alpha = c.a;
			}
			ENDCG
		

		Pass{
			Name "Outline"
			Tags{
			}
			Cull Front

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#pragma fragmentoption ARB_precision_hint_fastest
			#pragma multi_compile_shadowcaster
			#pragma multi_compile_fog
			#pragma only_renderers d3d9 d3d11 glcore gles 
			#pragma target 3.0
			uniform float _Outline_Width;
			uniform float4 _Outline_Color;
			uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
			struct VertexInput {
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float2 texcoord0 : TEXCOORD0;
			};
			struct VertexOutput {
				float4 pos : SV_POSITION;
				float2 uv0 : TEXCOORD0;
				UNITY_FOG_COORDS(1)
			};
			VertexOutput vert(VertexInput v) {
				VertexOutput o = (VertexOutput)0;
				o.uv0 = v.texcoord0;
				o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*_Outline_Width,1));
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}
			float4 frag(VertexOutput i, float facing : VFACE) : COLOR{
				float isFrontFace = (facing >= 0 ? 1 : 0);
			float faceSign = (facing >= 0 ? 1 : -1);
			float4 _Diffuse_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
			clip(_Diffuse_var.a - 0.5);
			return fixed4(_Outline_Color.rgb,0);
			}
			ENDCG

		}

	}
	FallBack "Diffuse"
}
