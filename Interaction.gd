class_name Interaction extends Node2D

var clickbox
var sprite
var highlighted
var DEBUG 


# Called when the node enters the scene tree for the first time.
func _ready():
	DEBUG = true
	
	clickbox = get_node("ClickBox")
	highlighted = false
	
	clickbox.mouse_entered.connect(_on_click_box_mouse_entered)
	clickbox.mouse_exited.connect(_on_click_box_mouse_exited)
	#if DEBUG:
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
	
	
func _input(event):
#	print(highlighted)
	if event is InputEventMouseButton:
		if highlighted and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			_interact()
		
func _interact():
	print("CLICK")



func _on_click_box_mouse_entered():
	highlighted = true
	
func _on_click_box_mouse_exited():
	highlighted = false


