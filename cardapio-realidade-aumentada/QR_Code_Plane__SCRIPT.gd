extends Node3D

@export var User_Camera_ptr: Camera3D

enum {
	ROOT_BONE,
	BOTTOM_LEFT_BONE,
	BOTTOM_RIGHT_BONE,
	TOP_LEFT_BONE,
	TOP_RIGHT_BONE
}

@onready var skeleton_3d: Skeleton3D = $"Rigged Plane/Plane Armature/Skeleton3D"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	#print(skeleton_3d.find_bone("DEF-Top_Right"))
	
	#skeleton_3d.set_bone_pose_position(BOTTOM_LEFT_BONE, Vector3(.02,0,.02))
	
	
	
	pass # Replace with function body.
	
	
	
func Set_Camera_Position():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#
	#
	#
	#skeleton_3d.set_bone_pose_position(bone_idx: int, position: Vector3)
	#pass
