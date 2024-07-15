extends CharacterBody2D

var SPEED = 36000
const ACCELERATION = 1
const staerie_recovery = 4500
var target_y = 2299


func _physics_process(delta):
	var targetvelocity = Vector2(0,0)
	var dir = 0
	if Input.is_action_pressed("left"):
		dir = -1
	if Input.is_action_pressed("right"):
		dir = 1
	targetvelocity.x = dir * SPEED * delta
	
	if position.y > target_y:
		targetvelocity.y -= staerie_recovery * delta
	velocity = lerp(velocity, targetvelocity, ACCELERATION * delta)
	
	move_and_slide()
	
func death():
	get_tree().reload_current_scene()
	
func _on_area_2d_body_entered(body):
	if body.is_in_group("obstacle"):
		death()

func _on_visible_on_screen_notifier_2d_screen_exited():
	death()

