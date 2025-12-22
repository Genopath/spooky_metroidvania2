class_name Player extends CharacterBody2D

#region /// State Machine Variables

var states : Array[ PlayerState ]
var current_state : PlayerState : 
	get : return states.front()
#endregion


func _process(_delta: float) -> void:
	pass

func _physics_process(_delta: float) -> void:

	pass
