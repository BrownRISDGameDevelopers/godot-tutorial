extends Node2D

var tutorial = "res://scenes/tutorial.tscn"

func _ready():
	if Global.high_score > 0:
		$HighScore.text = "High Score: " + str(Global.high_score)
		$HighScore.show()

func _on_start_button_pressed():
	Global.start_pressed = true
	get_tree().change_scene_to_file(tutorial)
