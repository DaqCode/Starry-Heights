extends Node
@onready var mainmenu = $Mainmenu
@onready var pause_pannel = $"../PauseScreen/PausePannel"

func _on_mainmenu_pressed():
	pause_pannel.visible = true
	get_tree().paused = true
