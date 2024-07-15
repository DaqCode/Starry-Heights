extends Node

var speed = 50
func _process(delta):
	position.y += speed * delta
