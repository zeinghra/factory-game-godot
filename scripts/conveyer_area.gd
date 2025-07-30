extends Area2D

var isMovingAnItem : bool = false
var MovedItem : StaticBody2D = null

# check if there is an item
# check if the item is MovableByConveyor
# change the item position to be centered on the conveyer
# give it horizontal velocity


func _process(delta: float) -> void:
	for body in get_overlapping_bodies():
		if body.has_node("MovableByConveyor"):
			isMovingAnItem = true
			MovedItem = body
			print("HI")
			break
		else :
			isMovingAnItem = false
			MovedItem = null
	_moveItem()
	
func _moveItem() :
	if isMovingAnItem:
		MovedItem.constant_linear_velocity = Vector2.RIGHT * 100
		
