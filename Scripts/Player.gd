extends CharacterBody2D

var spinSpeed = 1
var spin = 0

func _physics_process(delta):
	print(getSpin(spin * delta))
	rotate(getSpin(spin * delta)) 
	
	
	
func getSpin(spin) -> float:
	if Input.is_action_pressed("ui_right"):
		spin += spinSpeed
		
	if Input.is_action_pressed("ui_left"):
		spin -=spinSpeed
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_right"):
		spin = 0
	
	return spin
