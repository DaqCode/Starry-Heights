extends Button
@onready var question_panel = $"../../Question?/questionPanel"

func _on_pressed():
	question_panel.visible = true
