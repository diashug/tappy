extends CharacterBody2D

const GRAVITY: float = 600.0
const POWER: float = -200.0

@onready var plane_as2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var plane_ap: AnimationPlayer = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY * delta
	fly()
	move_and_slide()
	
	if is_on_floor():
		die()

func fly() -> void:
	if Input.is_action_just_pressed("fly"):
		velocity.y = POWER
		plane_ap.play("power")

func die() -> void:
	plane_as2d.stop()
	set_physics_process(false)
