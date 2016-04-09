
extends Node2D

onready var navigation2D = get_node("Navigation2D")
onready var tester = get_node("Tester")
onready var target = get_node("Target")

func _ready():
	set_process_input(true)

func _input(event):
	if event.type == InputEvent.MOUSE_MOTION:
		var points = navigation2D.get_simple_path(get_global_mouse_pos(), Vector2(760, 560), false)
		tester.draw_points(points)
