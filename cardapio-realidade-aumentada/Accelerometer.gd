extends Label

@export var speed: float = 500.0
@export var smoothing: float = 5.0

var velocity: Vector2 = Vector2.ZERO

func _process(delta):
	# Get accelerometer data (x, y, z)
	#var accel: Vector3 = Input.get_accelerometer() -> captura pra onde o celular ta girando
	var accel: Vector3 = Input.get_gyroscope()
	
	
	

	# Convert to 2D movement (adjust axis depending on orientation)
	var target_velocity = Vector2(accel.x, -accel.y) * speed

	# Smooth movement (optional but recommended)
	velocity = velocity.lerp(target_velocity, smoothing * delta)

	# Move the UI element
	position += velocity * delta

	# Clamp to screen bounds
	var screen_size = get_viewport_rect().size
	position.x = clamp(position.x, 0, screen_size.x - size.x)
	position.y = clamp(position.y, 0, screen_size.y - size.y)
