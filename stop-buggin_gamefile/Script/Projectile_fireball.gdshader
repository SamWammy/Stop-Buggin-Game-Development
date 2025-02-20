shader_type canvas_item;

uniform vec4 color_tint = vec4(1.0, 1.0, 1.0, 1.0); 

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    COLOR = tex_color * color_tint;
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
