extends Node2D
@onready var animated_sprite_2d: AnimatedSprite2D = $StaticBody2D/AnimatedSprite2D

func _ready() :
	animated_sprite_2d.play("default");
