extends KinematicBody2D
class_name Actor


# Declare member variables here. Examples:

export var gravity = 500.0
export var speed = Vector2(300.0, 1000.0)
export var JUMP_FORCE = 400.0

var velocity = Vector2.ZERO

var dice = RandomNumberGenerator.new()

"""
Attack Types:
	Jump,
"""

var move0
var move1
var move2
var move3


# Called when the node enters the scene tree for the first time.
func _ready():
	move0 = generate_move()
	move1 = generate_move()
	move2 = generate_move()
	move3 = generate_move()

func _process(delta):
	pass
	
func _physics_process(delta: float) -> void:
	# Runs physics every frame, based on seconds
	velocity.y += gravity * delta
	if velocity.y > speed.y: velocity.y = speed.y
	
	
	
	move_and_slide(velocity)

func generate_move() -> String:
	var die = dice.randi_range(1, 1)
	if die == 1:
		return "Jump"
	else:
		return "Jump"

func attack():
	if move0 == "Jump":
		velocity.y = -JUMP_FORCE
	print("yes")
	
func projectile():
	pass
