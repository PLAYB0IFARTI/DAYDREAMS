extends Area2D


@onready var pebble: CharacterBody2D = %pebble
@onready var ledgegrab: AudioStreamPlayer = $Ledgegrab

func _on_body_entered(body: Node2D) -> void:
	pebble.in_ledge = true


func _on_body_exited(body: Node2D) -> void:
	pebble.in_ledge = false
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("jump") and pebble.in_ledge:
		pebble.change_y_speed()
		pebble.in_ledge = false
		print("yes")
		ledgegrab.play()
