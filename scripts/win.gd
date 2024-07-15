extends Area2D

@export var VisablePath : NodePath
var viasasble

func _ready():
	viasasble = get_node(VisablePath)
	
func _on_body_entered(body):
	if body.name == "Staerie":
		body.SPEED = 10000
		body.target_y = -10000
		
		
		await get_tree().create_timer(5).timeout
		viasasble.visible = true

