extends Node

var start_pressed = false
var score = 0
var high_score = 0

signal score_updated(score)

func update_score():
	score += 1
	high_score = max(score, high_score)
	score_updated.emit(score)