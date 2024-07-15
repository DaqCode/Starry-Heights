extends Node2D

var speed = 100
func _process(delta):
	position.y += speed * delta


func _on_win_body_entered(body):
	pass # Replace with function body.
