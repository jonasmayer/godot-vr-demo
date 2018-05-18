extends ARVROrigin

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var arvr_interface = ARVRServer.find_interface("Native mobile")
	print (ARVRServer.get_interfaces())
	#var arvr_interface = ARVRServer.find_interface("Open VR")
	if(arvr_interface and arvr_interface.initialize()):
		get_viewport().arvr = true
		get_viewport().hdr = false

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
