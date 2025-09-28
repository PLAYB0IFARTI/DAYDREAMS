extends Area2D

@onready var pebble: CharacterBody2D = %pebble
# wall jumpable area
func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("jump") and pebble.wall_jumps <= pebble.MAX_WALL_JUMPS and pebble.jumped == false:
		print(pebble.wall_jumps, pebble.jumped)
		pebble.wall_jumps += 1
		pebble.velocity.y += 90
		pebble.jumped = false
		pebble.direction *= -1
