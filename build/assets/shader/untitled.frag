#version 460 core

uniform float uTime;
out vec4 outColor;

vec4 interpolate(vec3 a, vec3 b, float amount)
{
	return vec4((1.0f - amount) * a + amount * b, 1.0f);
}

void main()
{
	vec3 colorA = vec3(1.0f, 0.0f, 0.0f);
	vec3 colorB = vec3(0.0f, 0.0f, 1.0f);

	outColor = interpolate(colorA, colorB, abs(sin(uTime)));
}

// Some changes
// other change
// fgsdfkjgdafgsdfas
// 


