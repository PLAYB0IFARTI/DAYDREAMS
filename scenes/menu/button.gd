extends Button

@onready var music: AudioStreamPlayer = $"../../music"


func _on_button_up() -> void:
	music.stop()
	get_tree().change_scene_to_file("res://scenes/level1.tscn")
