extends Node
# Map is 20x11 Tiles 8px each
class_name Walker

const DIRECTIONS = [Vector2.RIGHT,Vector2.UP,Vector2.LEFT,Vector2.DOWN]

var position = Vector2.ZERO
var direction = Vector2.RIGHT
var borders = Rect2()
var step_history = []
var steps_since_turn = 0
var rooms = []


