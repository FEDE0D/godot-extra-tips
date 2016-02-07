
extends Button

func _ready():
	pass

func _on_Button_pressed():
	# Call to the Autoload Transition node.
	Transition.fade_to("res://sceneB.scn")
