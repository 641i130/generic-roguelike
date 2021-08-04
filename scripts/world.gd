extends Node2D
# WORLD SCRIPT

onready var tileMap = $TileMap
var borders = Rect2(1, 1, 32, 18)


func _ready():
	randomize()
	gen()

func gen():
	var w = Walker.new(Vector2(32,18),borders)
	var map = w.walk(500)
	w.queue_free()
	for location in map:
		tileMap.set_cellv(location, -1)
	tileMap.update_bitmask_region(borders.position,borders.end)

func _input(event):
	"Check for input"
	if event.is_action("reset"):
		get_tree().reload_current_scene()
	if event.is_action_pressed("exit"):
		get_tree().quit()
