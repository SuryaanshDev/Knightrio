extends Node

var score = 0

@onready var score_label = $score_label

func add_coin():
	score += 1
	score_label.text = "You Collected " + str(score) + " coins."
