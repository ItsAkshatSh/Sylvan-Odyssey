class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle: State = $"../Idle"
@onready var attack: State = $"../Attack"


# What happens when the player enters
func Enter() -> void:
	player.UpdateAnimation("walk")
	pass


# What happens when the player enters
func Exit() -> void:
	pass
	
#what happens when process updates
func Process( _delta : float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		player.UpdateAnimation("walk")
		
		
	return null
	

#what happens when physics process updates
func Physics( _delta : float ) -> State:
	return null
	
	
func HandleInput (_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
