extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var index = -1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$dialouge_box.show();
	if Input.is_action_pressed("ui_enter"):
		index = +1

	if Input.is_action_pressed("ui_shift"):
		index = -1

	if index == 0:
		$Label.text= "Hey! This is a visual novel and a story about a librarian living in h- traE."
		$Label2.text= "Press 'Enter' to read the next texts"
	elif index == 1:
		$Label.text = "Everything in our world is backwards so do not easily get tricked when someone wishes you good luck."
		$Label2.text = "press 'Shift' to read the previous texts"
