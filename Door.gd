class_name Door extends Interaction

@export var destination = ""
var dest_scene 

func _ready():
	dest_scene = load(destination)

	
func _interact():
#	pass
	get_tree().change_scene_to_packed(dest_scene)
