#version 330 core

layout (location = 0) in vec3 aPos;

uniform vec2 translation;

void main()
{
    gl_Position = vec4(aPos.x + translation.x, aPos.y + translation.y, aPos.z, 1.0);
}