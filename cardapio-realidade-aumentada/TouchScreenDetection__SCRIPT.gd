extends Area3D

@onready var suzanne: MeshInstance3D = $".."


func _input_event(camera: Node, event: InputEvent, position: Vector3, normal: Vector3, shape_idx: int):
	
	if event.is_pressed():
	
		suzanne.get_surface_override_material(0).set("albedo_color", Color(randf(), randf(), randf()))
