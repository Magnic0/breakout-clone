extends Node2D

func _process(_delta):
	pass

func _on_area_2d_area_entered(_area):
	queue_free()
