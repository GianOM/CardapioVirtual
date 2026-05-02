extends TextureRect

var camera_feed: CameraFeed

var cam_text_y: CameraTexture
var cam_text_CbCr: CameraTexture

const PROPER_YUV_TO_RGB = preload("uid://dmrsi6ll5kann")


func _ready():
	
	CameraServer.set_monitoring_feeds(true)
	if CameraServer.get_feed_count() > 0:
		#var Teste: Array[CameraFeed] = CameraServer.feeds()
		# 0 -> Camera Traseira
		# 1 -> Camera frontal
		# Lembre-se que o TextureRect note possui uma rotacao
		camera_feed = CameraServer.get_feed(0)
		
		
		#var EmptyDict: Dictionary = {"width": 1280, "height": 720, "format": "YUV_420_888", "output": "copy"}
		var Temp_Array: Array = camera_feed.get_formats()
		print(Temp_Array[4])
		#print(EmptyDict)
		
		
		#var Temp: Array[CameraFeed] = CameraServer.feeds()
		
		camera_feed.set_format(6, Temp_Array[6])
		camera_feed.set_active(true)
		
		
		cam_text_y = CameraTexture.new()
		cam_text_CbCr = CameraTexture.new()
		
		cam_text_y.camera_feed_id = camera_feed.get_id()
		cam_text_CbCr.camera_feed_id = camera_feed.get_id()
		
		cam_text_y.which_feed = 0
		cam_text_CbCr.which_feed = 1
		
		#print(camera_feed.get_datatype())
		
		
		self.material.set("shader_parameter/camera_y", cam_text_y)
		self.material.set("shader_parameter/camera_CbCr", cam_text_CbCr)
	else:
		push_warning("No camera feeds found.")
		
