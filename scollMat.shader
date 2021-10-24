shader_type canvas_item;

uniform vec2 scroll_direction = vec2(1,1);
uniform float scrolling_speed = 1.0; 

void fragment(){
	vec2 scroll = scroll_direction * TIME * scrolling_speed;
	COLOR = texture(TEXTURE,UV+scroll);
}