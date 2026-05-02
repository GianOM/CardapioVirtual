extends Node


@onready var viewport : Viewport = get_viewport()
# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#
	#
	#environment.background_mode = Environment.BG_COLOR
	#environment.background_color = Color(0.0, 0.0, 0.0, 0.0)
	#environment.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
	#
	#
	#
	#var xr_interface: XRInterface = XRServer.primary_interface
	##var modes = xr_interface.get_supported_environment_blend_modes()
	#
	#viewport.transparent_bg = true
	#xr_interface.environment_blend_mode = XRInterface.XR_ENV_BLEND_MODE_ALPHA_BLEND
	
	#var xr_interface: XRInterface = XRServer.primary_interface
	#if xr_interface:
		#var modes = xr_interface.get_supported_environment_blend_modes()
		#if XRInterface.XR_ENV_BLEND_MODE_ALPHA_BLEND in modes:
			#xr_interface.environment_blend_mode = XRInterface.XR_ENV_BLEND_MODE_ALPHA_BLEND
			#viewport.transparent_bg = true
		#elif XRInterface.XR_ENV_BLEND_MODE_ADDITIVE in modes:
			#xr_interface.environment_blend_mode = XRInterface.XR_ENV_BLEND_MODE_ADDITIVE
			#viewport.transparent_bg = false
	#else:
		#return false
#
	#environment.background_mode = Environment.BG_COLOR
	#environment.background_color = Color(0.0, 0.0, 0.0, 0.0)
	#environment.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
	#return true
	
	#pass # Replace with function body.
