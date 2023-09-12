class_name Door extends Interaction

@export var destination = ""
	
func _interact():
	get_tree().change_scene_to_file(destination)
