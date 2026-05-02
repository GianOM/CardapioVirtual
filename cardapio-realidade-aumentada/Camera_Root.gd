extends XROrigin3D

@export var speed: float = 3.0
@export var smoothing: float = 5.0
@export var deadzone: float = 0.05

var velocity: Vector3 = Vector3.ZERO

func _process(delta):
	var accel: Vector3 = Input.get_accelerometer()

	# Ignore tiny noise
	if accel.length() < deadzone:
		return

	# Normalize gravity direction
	var gravity_dir = accel.normalized()

	# Convert phone tilt into movement direction
	# (You will likely tweak axes depending on orientation)
	var move_dir = Vector3(
		gravity_dir.x,   # left/right
		-gravity_dir.y,  # up/down
		gravity_dir.z    # forward/back
	)

	# Smooth movement
	#velocity = velocity.lerp(move_dir * speed, smoothing * delta)

	# Move XR origin (NOT the camera)
	#translate(velocity * delta)
