extends KinematicBody2D
class_name Actor


# Declare member variables here. Examples:
export var gravity = 300.0
export var speed = Vector2(300.0, 300.0)

var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta: float) -> void:
	# Runs physics every frame, based on seconds
	velocity.y += gravity * delta
	if velocity.y > speed.y: velocity.y = speed.y
	
	move_and_slide(velocity)
	
