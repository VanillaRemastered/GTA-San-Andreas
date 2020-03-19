sampler shadowTex : register(s0);
float4 color : register(c0);

float4 main(float2 tex : TEXCOORD0) : COLOR0
{
    float4 clr = tex2D(shadowTex, tex);
    float transp = color.a * clr.r;
    return float4((1-color.r) * transp,  (1-color.g) * transp, (1-color.b) * transp, 1);
}