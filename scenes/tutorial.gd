extends Node2D

var start_screen = "res://scenes/start_screen.tscn"

func _ready():
	if not Global.start_pressed:
		get_tree().change_scene_to_file(start_screen)

func game_over():
	get_tree().change_scene_to_file(start_screen)
