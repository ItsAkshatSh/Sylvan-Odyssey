class_name State_Idle extends State

@onready var walk: State = $"../Walk"
@onready var attack: State = $"../Attack"


# What happens when the player enters
func Enter() -> void:
	player.UpdateAnimation("idle")
	pass


# What happens when the player enters
func Exit() -> void:
	pass
	
#what happens when process updates
func Process( _delta : float ) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null
	

#what happens when physics process updates
func Physics( _delta : float ) -> State:
	return null
	
	
func HandleInput (_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
