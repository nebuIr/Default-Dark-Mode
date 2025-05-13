#version 150

#moj_import <fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

uniform sampler2D Sampler0;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0).rrrr * vertexColor * ColorModulator;
    if (color.a < 0.1) {
        discard;
    }
    
    if (color.r > 0.2479 && color.r < 0.2481
        && color.g > 0.2479 && color.g < 0.2481
        && color.b > 0.2479 && color.b < 0.2481) {
        color = vec4(0.6667, 0.6667, 0.6667, 1.0);
    }
    
    vec3 pos = vec3(0.0, 0.0, vertexDistance);
    float sphericalDist = fog_spherical_distance(pos);
    float cylindricalDist = fog_cylindrical_distance(pos);
    
    fragColor = apply_fog(color, sphericalDist, cylindricalDist, 
                        FogEnvironmentalStart, FogEnvironmentalEnd,
                        FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
