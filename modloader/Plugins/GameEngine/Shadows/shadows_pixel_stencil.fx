sampler shadowTex : register(s0);
float4 color : register(c0);

float4 main(float2 tex : TEXCOORD0) : COLOR0
{
    float4 clr = tex2D(shadowTex, tex);
    return float4(color.r, color.g, color.b, color.a * clr.r);
}