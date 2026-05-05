shader_type spatial;
render_mode unshaded, fog_disabled, ambient_light_disabled, cull_disabled, depth_test_disabled, depth_draw_never;



stencil_mode compare_less;


uniform sampler2D camera_y;
uniform sampler2D camera_CbCr;

void vertex() {
	//Mapeia o Plano Quadmesh para a camera
	POSITION = vec4(VERTEX.y,VERTEX.x, VERTEX.z, 1.0);

}


void fragment() {
	
	vec3 color;
	color.r = texture(camera_y, UV).r;
	color.gb = texture(camera_CbCr, UV).rg - vec2(0.5, 0.5);
	
	
	
	color.rgb = mat3(
						vec3(1.00000, 1.00000, 1.00000),
						vec3(0.00000, -0.18732, 1.85560),
						vec3(1.57481, -0.46813, 0.00000)) *
				color.rgb;

    ALBEDO = color;
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
