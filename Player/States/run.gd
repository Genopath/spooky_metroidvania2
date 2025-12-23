class_name PlayerStateRun extends PlayerState

#region /// state references

# reference to all other states
@onready var states: Node = $".."

#endregion

# What happens when this state is initialized?
func init() -> void:
	pass

# What happens when we enter this state?
func enter() -> void:
	# play animation
	pass

# What happens when we exit this state?
func exit() -> void:
	pass

# What happens when an input is pressed?
func handle_input( _event : InputEvent ) -> PlayerState:
	if _event.is_action_pressed("jump") and player.is_on_floor():
		return jump
	return next_state

# What happens each process tick in this state?
func process(_delta: float) -> PlayerState:
	if player.direction.x == 0:
		return idle
	return null

# What happens each physics process tick in this state?
func physics_process(_delta: float) -> PlayerState:
	player.velocity.x = player.direction.x * player.move_speed
	return next_state
