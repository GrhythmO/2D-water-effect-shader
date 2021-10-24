shader_type canvas_item;

uniform float wave_speed = 5.0; //wave loop speed
uniform float wave_freq = 3.0; //wave vertical freq
uniform float wave_width = 5; //wave width 
uniform bool enable_scroll = false;
uniform vec2 scroll_direction = vec2(1,0);
uniform float scrolling_speed = 1.0;

void fragment(){
	vec2 scroll = scroll_direction * TIME * scrolling_speed;
	vec2 scale_UV = UV;
	vec2 uv_offset;
	
	uv_offset.x = cos((TIME*wave_speed)+UV.y*wave_freq*2.0)*wave_width*0.01;
	//debug UV
	//COLOR = vec4(wave_uv_offset,0.0,1.0);
	vec2 clamped_UV = scale_UV+uv_offset;
	clamped_UV.x = UV.x+uv_offset.x*(1.00-clamped_UV.y);
	if (enable_scroll){
		
		COLOR = texture(TEXTURE,clamped_UV+scroll);
	}else{
		
		COLOR = texture(TEXTURE,clamped_UV) ;
	}
}