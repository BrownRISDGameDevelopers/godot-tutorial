extends Node2D

var start_screen = "res://scenes/start_screen.tscn"

func _ready():
	if not Global.start_pressed:
		get_tree().change_scene_to_file(start_screen)
	Global.score_updated.connect(update_score)

func game_over():
	get_tree().change_scene_to_file(start_screen)

func update_score(score):
	$Score.text = "Score: " + str(score)


func _on_player_player_hit():
	game_over()