shader_type canvas_item;

uniform float blur: hint_range(0.0, 2.5);
uniform float brightness: hint_range(0.0,1.0);
uniform sampler2D SCREEN_TEXUTRE  : hint_screen_texture, filter_linear_mipmap;

void fragment() {
	COLOR = texturelod(SCREEN_TEXTURE, SCREEN_UV, BLUR);
	COLOR.rgb *= brightness;
}
