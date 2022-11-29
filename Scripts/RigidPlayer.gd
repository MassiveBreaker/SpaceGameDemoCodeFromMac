extends RigidBody2D

var spinSpeed = .75
var lineRotation

# Called when the node enters the scene tree for the first time.
func _ready():
	angular_velocity = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Line2D.look_at(get_global_mouse_position())
	lineRotation = $Line2D.rotation - PI/2
	pass

func _physics_process(delta):
	getSpin(spinSpeed)
	push()
	

func getSpin(spin) -> float:
	if Input.is_action_pressed("ui_right"):
		angular_velocity = spin
	if Input.is_action_pressed("ui_left"):
		angular_velocity = -spin
	return spin

func push():
	if Input.is_action_just_pressed("ui_accept"):
		apply_central_impulse(Vector2(0,50000).rotated(rotation).rotated(lineRotation))
		
