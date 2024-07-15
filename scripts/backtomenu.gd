extends Button
@onready var question_panel = $".."

func _on_pressed():
	question_panel.visible = false
