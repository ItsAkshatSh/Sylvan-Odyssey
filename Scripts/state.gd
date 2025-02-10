class_name State extends Node

##stores ref to the player that this state belongs to it
static var player: Player


func _ready() -> void:
	pass # Replace with function body.


# What happens when the player enters
func Enter() -> void:
	pass


# What happens when the player enters
func Exit() -> void:
	pass
	
#what happens when process updates
func Process( _delta : float ) -> State:
	return null
	

#what happens when physics process updates
func Physics( _delta : float ) -> State:
	return null
	
	
func HandleInput (_event: InputEvent) -> State:
	return null
