extends Node2D

class_name Ball

var x_speed = 300;
var y_speed = 300;

var screen_height: float = ProjectSettings.get_setting("display/window/size/viewport_height")
var screen_width: float = ProjectSettings.get_setting("display/window/size/viewport_width")
 
func _process(delta):
	handle_speed(delta)

func handle_speed(delta):
	if position.x >= screen_width || position.x <= 0:
		x_speed = -x_speed
	if position.y <= 0:
		y_speed = -y_speed
	if position.y >= screen_height:
		position.y = screen_height/2
		position.x = screen_width/2
	
	position.x += x_speed * delta
	position.y += y_speed * delta

func invert_y():
	y_speed = -y_speed

func _on_area_2d_body_entered(_body):
	invert_y()

func _on_area_2d_area_entered(_area):
	invert_y()
