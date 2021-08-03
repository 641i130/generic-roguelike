extends Node2D
# WORLD SCRIPT

onready var tileMap = $TileMap
var borders = Rect2(1, 1, 38, 21)


func _ready():
	randomize()
	gen()


func gen():
	var w = Walker.new(Vector2(20,11),borders)
	var map = w.walk(500)
	w.queue_free()
	for location in map:
		tileMap.set_cellv(location, -1)
	tileMap.update_bitmask_region(borders.position,borders.end)
