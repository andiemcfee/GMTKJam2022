extends Actor


# Local Variables
const ACCELERATION = 100
const FRICTION = 100
var motion = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _physics_process(delta):
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") # get left and right input

	if x_input != 0: # movement if left/right is being pressed
		motion.x += x_input * ACCELERATION * delta  
		motion.x = clamp(motion.x, -300.0, 300.0) # make sure motion does not surpass max speed 


	motion = move_and_slide(motion)

