extends Node3D
var xr_interface: XRInterface

func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.initialize():
		# Ensure we are in an AR mode (like alpha blend for passthrough)
		xr_interface.environment_blend_mode = XRInterface.XR_ENV_BLEND_MODE_ALPHA_BLEND
		get_viewport().use_xr = true
