extends CanvasLayer

@onready var speed_label: Label = $speed
@onready var pebble: CharacterBody2D = %pebble
@onready var health_label: Label = $health
@onready var health_bar: TextureProgressBar = $Control/HPBAR
@onready var speed_bar: TextureProgressBar = $Control/SPEEDBAR
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	health_label.text = str("health: ") + str(pebble.health)
	speed_label.text = str("speed: ") + str(abs(round(pebble.speed)))
	health_bar.value = pebble.health
	speed_bar.value = pebble.speed
