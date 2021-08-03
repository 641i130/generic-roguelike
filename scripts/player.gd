extends Area2D

var tile_size = 8
var inputs = {
	"N": Vector2(0,-1),
	"S": Vector2(0,1),
	"E": Vector2(1,0),
	"W": Vector2(-1,0),
	"NE": Vector2(1,-1), # Add input
	"NW": Vector2(-1,-1), # Add input
	"SE": Vector2(1,1), # Add input
	"SW": Vector2(-1,1) # Add input
}

func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _unhandled_input(event):
	"Movement checks (can't be held yet...)"
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)

func move(dir):
	position += inputs[dir] * tile_size

