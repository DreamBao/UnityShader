// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9940,x:32719,y:32712,varname:node_9940,prsc:2|emission-2171-OUT,clip-3048-A,olwid-7410-OUT,olcol-6205-RGB;n:type:ShaderForge.SFN_Slider,id:7410,x:32230,y:33024,ptovrint:False,ptlb:Outline_Width,ptin:_Outline_Width,varname:_Outline_Width,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:6205,x:32296,y:33179,ptovrint:False,ptlb:Outline_Color,ptin:_Outline_Color,varname:_Outline_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6052,x:31831,y:33049,varname:node_6052,prsc:2|A-8246-OUT,B-2917-RGB;n:type:ShaderForge.SFN_Multiply,id:2171,x:32038,y:32756,varname:node_2171,prsc:2|A-3048-RGB,B-6052-OUT;n:type:ShaderForge.SFN_Tex2d,id:3048,x:31792,y:32619,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:2917,x:31602,y:33157,ptovrint:False,ptlb:Rim Color,ptin:_RimColor,varname:_RimColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1.09,c3:2,c4:1;n:type:ShaderForge.SFN_Fresnel,id:8246,x:31615,y:32921,varname:node_8246,prsc:2|EXP-2373-OUT;n:type:ShaderForge.SFN_Desaturate,id:2373,x:31393,y:32890,varname:node_2373,prsc:2|COL-2294-OUT;n:type:ShaderForge.SFN_Multiply,id:2294,x:31223,y:32930,varname:node_2294,prsc:2|A-2137-OUT,B-8582-OUT;n:type:ShaderForge.SFN_Add,id:2137,x:31008,y:32767,varname:node_2137,prsc:2|A-4122-XYZ,B-4122-X,C-4122-Y;n:type:ShaderForge.SFN_FragmentPosition,id:4122,x:30728,y:32755,varname:node_4122,prsc:2;n:type:ShaderForge.SFN_Power,id:8582,x:31018,y:33067,varname:node_8582,prsc:2|VAL-999-OUT,EXP-7582-OUT;n:type:ShaderForge.SFN_Slider,id:7582,x:30640,y:33223,ptovrint:False,ptlb:Rim Power,ptin:_RimPower,varname:_RimPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.08700275,max:10;n:type:ShaderForge.SFN_Fresnel,id:999,x:30664,y:32979,varname:node_999,prsc:2|EXP-5909-OUT;n:type:ShaderForge.SFN_Add,id:5909,x:30476,y:33014,varname:node_5909,prsc:2|A-3172-OUT,B-5544-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5544,x:30291,y:33143,ptovrint:False,ptlb:Rim Offset,ptin:_RimOffset,varname:_RimOffset,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Dot,id:3172,x:30291,y:32954,varname:node_3172,prsc:2,dt:0|A-3809-OUT,B-9854-OUT;n:type:ShaderForge.SFN_ViewVector,id:9854,x:30077,y:32984,varname:node_9854,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:3809,x:30077,y:32827,prsc:2,pt:False;proporder:3048-5544-7582-2917-6205-7410;pass:END;sub:END;*/

Shader "Cartoon/Cartoon_Rim" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _RimOffset ("Rim Offset", Float ) = 0.3
        _RimPower ("Rim Power", Range(0, 10)) = 0.08700275
        _RimColor ("Rim Color", Color) = (0,1.09,2,1)
        _Outline_Color ("Outline_Color", Color) = (0.5,0.5,0.5,1)
        _Outline_Width ("Outline_Width", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 100
        Pass {
            Name "Outline"
            Tags {
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
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
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*_Outline_Width,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                return fixed4(_Outline_Color.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float _RimOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_Diffuse_var.rgb*(pow(1.0-max(0,dot(normalDirection, viewDirection)),dot(((i.posWorld.rgb+i.posWorld.r+i.posWorld.g)*pow(pow(1.0-max(0,dot(normalDirection, viewDirection)),(dot(i.normalDir,viewDirection)+_RimOffset)),_RimPower)),float3(0.3,0.59,0.11)))*_RimColor.rgb));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                clip(_Diffuse_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
