extends Camera3D

var pitch: float = 0.0
var roll: float = 0.0
var yaw: float = 0.0

var initial_yaw : float = 0.0

var k : float = 0.9

var dt: float = 0.5

var Last_Frame_Accelerometer: Vector3 = Vector3.ZERO
@onready var dishes_root: Node3D = $"../../Dishes_Root"

func _ready():
	await get_tree().process_frame
	var magnet: Vector3 = Input.get_magnetometer()
	print(magnet)
	initial_yaw = atan2(-magnet.x, magnet.z) 

func _physics_process(delta: float) -> void:
	var magnet: Vector3 = Input.get_magnetometer().rotated(-Vector3.FORWARD, rotation.z).rotated(Vector3.RIGHT, rotation.x)
	var gravity: Vector3 = Input.get_gravity()
	
	#var velocity: Vector3 = filter_vector3(Last_Frame_Accelerometer - Input.get_accelerometer(), 0.01) * delta
	var velocity: Vector3 = (Last_Frame_Accelerometer - gravity) * delta
	#var velocity: Vector3 = (Input.get_accelerometer() - gravity)  * delta
	
	var delta_pos: Vector3 = velocity * delta
	
	position += delta_pos
	dishes_root.position -= delta_pos
	
	print(position)
	Last_Frame_Accelerometer = gravity
	
	
	
	var roll_acc = atan2(-gravity.x, -gravity.y) 
	gravity = gravity.rotated(-Vector3.FORWARD, rotation.z)
	var pitch_acc = atan2(gravity.z, -gravity.y)
	var yaw_magnet = atan2(-magnet.x, magnet.z)
	
	var gyroscope: Vector3 = Input.get_gyroscope().rotated(-Vector3.FORWARD, roll)
	pitch = lerp_angle(pitch_acc, pitch + gyroscope.x * delta, k)
	yaw = lerp_angle(yaw_magnet, yaw + gyroscope.y * delta, k)
	roll = lerp_angle(roll_acc, roll + gyroscope.z * delta, k) 
	
	rotation = Vector3(pitch, yaw - initial_yaw, roll)
	
	
	#var movement_dir: Vector3 = Input.get_accelerometer() - Input.get_gravity()
	
	#position += movement_dir * 0.001
	
		

		
		
		
func Reset_Pos():
	position = Vector3.ZERO
		
func filter_vector3(my_vec3: Vector3, threshold: float = 0.01) -> Vector3:
	if abs(my_vec3.x) < threshold:
		my_vec3.x = 0.0
		
		
	if abs(my_vec3.y) < threshold:
		my_vec3.y = 0.0
		
		
	if abs(my_vec3.z) < threshold:
		my_vec3.z = 0.0
		
		
	return my_vec3
