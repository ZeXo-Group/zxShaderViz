#version 460 core

uniform float uTime;

out vec4 outColor;

void main()
{
	outColor = vec4(abs(sin(uTime)));
} 
