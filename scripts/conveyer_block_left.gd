extends Node2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@export var speed : int = 100

func _ready() :
	if animated_sprite_2d:
		animated_sprite_2d.play("default")
