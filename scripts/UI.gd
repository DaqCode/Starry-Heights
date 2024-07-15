extends CanvasLayer

@onready var mainmenu = $Mainmenu

func _on_mainmenu_pressed():
	mainmenu.visible = true
	get_tree().paused = true
