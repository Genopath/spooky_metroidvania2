class_name PlayerStateJump extends PlayerState

#region /// state references
# reference to all other states
@onready var states: Node = $".."
#endregion

# What happens when this state is initialized?
func init() -> void:
	pass

# What happens when we enter this state?
func enter() -> void:
	# Apply jump force
	player.velocity.y = -player.jump_force
	# play jump animation
	pass

# What happens when we exit this state?
func exit() -> void:
	pass

# What happens when an input is pressed?
func handle_input( _event : InputEvent ) -> PlayerState:
	return next_state

# What happens each process tick in this state?
func process(_delta: float) -> PlayerState:
	# Check if we've landed (touching ground)
	if player.is_on_floor():
		if player.direction.x != 0:
			return run
		else:
			return idle
	
	return next_state

# What happens each physics process tick in this state?
func physics_process(_delta: float) -> PlayerState:
	# Allow horizontal movement in air
	player.velocity.x = player.direction.x * player.move_speed
	return next_state
