extends Actor


# Local Variables
const ACCELERATION = 200
const FRICTION = 0.05

var motion = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("attack"):
		.attack()

func _physics_process(delta):
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") # get left and right input
	
	velocity.x += x_input * speed.x
	
	velocity.x = lerp(velocity.x, 0, FRICTION)
	velocity.x = clamp(velocity.x, -speed.x, speed.x) # make sure motion does not surpass max speed
