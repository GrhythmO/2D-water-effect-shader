shader_type canvas_item;
uniform sampler2D hue ;

void fragment(){
	COLOR = texture(hue,vec2(UV.y,UV.x));
	}