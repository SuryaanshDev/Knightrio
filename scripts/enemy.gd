extends Node2D

@onready var ray_cast_right = $ray_cast_right
@onready var ray_cast_left = $ray_cast_left
@onready var animated_sprite_2d = $AnimatedSprite2D

const speed = 60
var direction = 1

func _process(delta):
	
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	
			
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * speed * delta
