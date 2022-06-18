extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var index = 0
var test = false


# Called when the node enters the scene tree for the first time.
func _ready():
	$dialouge_box.show();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if  Input.is_action_just_pressed("enter"):
		index = +1
		test = true
		print(test)
		$dialouge_box.hide()

	if Input. is_action_just_pressed("shift"):
		index = -1

	if index == 1:
		$Label.text= "Hey! This is a visual novel and a story about a librarian living in h- traE."
		$Label2.text= "Press 'Enter' to read the next texts"
	elif index == 2:
		$Label.text = "Everything in our world is backwards so do not easily get tricked when someone wishes you good luck."
		$Label2.text = "press 'Shift' to read the previous texts"
