extends Node2D

const speed = 60
var direction = 1
@onready var raycast_right: RayCast2D = $"raycast right"
@onready var raycast_left: RayCast2D = $"raycast left"
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycast_left.is_colliding():
		animated_sprite.flip_h = false
		direction = 1
	position.x += direction * speed * delta
