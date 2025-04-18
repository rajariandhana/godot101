extends Node2D
const SPEED = 30
var direction = 1

@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	elif ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	position.x += SPEED * delta * direction
