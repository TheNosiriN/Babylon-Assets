uniform mat4 model_from_view;
uniform mat4 view_from_clip;

attribute vec2 position;

varying vec3 view_ray;

void main() {
	view_ray = (model_from_view  vec4((view_from_clip * vertex).xyz, 0.0)).xyz;
	gl_Position = position;
}
