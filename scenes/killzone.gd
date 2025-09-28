extends Area2D

@onready var timer: Timer = $Timer

var touched = false

func _on_body_entered(body: Node2D) -> void:
	if touched == false:
		touched = true
		print("you passed")
		Engine.time_scale = 0.5
		timer.start()




func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()# Replace with function body.
	Engine.time_scale = 1
