extends Area3D

const ROTATION_SENSITIVITY: float = 0.005

@onready var suzanne: MeshInstance3D = $".."
@onready var mesh_root: Node3D = $"../.."

@onready var xr_camera_3d: Camera3D = $"../../../../XROrigin3D/XRCamera3D"

@onready var dishes_root: Node3D = $"../../.."

func _input_event(camera: Node, event: InputEvent, position: Vector3, normal: Vector3, shape_idx: int):
	
	
	if event is InputEventScreenDrag:
		
		#var cam := get_viewport().get_camera_3d()
		# Camera axes
		var cam_right: Vector3 = xr_camera_3d.global_transform.basis.x
		var cam_up: Vector3 = xr_camera_3d.global_transform.basis.y
		# Rotate relative to camera view
		mesh_root.rotate(cam_up, event.screen_relative.x * ROTATION_SENSITIVITY)
		mesh_root.rotate(cam_right, event.screen_relative.y * ROTATION_SENSITIVITY)
		
		#print("Dragged")
	#if event.is_pressed():
	#
		#suzanne.get_surface_override_material(0).set("albedo_color", Color(randf(), randf(), randf()))
