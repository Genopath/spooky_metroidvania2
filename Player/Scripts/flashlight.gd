class_name Flashlight extends PointLight2D

@export var follow_mouse : bool = true
@export var flashlight_energy : float = 1.0
@export var flashlight_range : float = 500.0

func _ready():
	energy = flashlight_energy
	enabled = true

func _input(event):
	# Toggle flashlight on/off with flashlight action
	if event.is_action_pressed("flashlight"):
		enabled = !enabled
