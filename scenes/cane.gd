extends Area2D

var hard_pos_x = position.x
var hard_pos_y = position.y
var direction = 1
var speed = 200
var dmg = 1
var hard_dir = 0
var proj_speed = 0

@onready var pebble: CharacterBody2D = %pebble
@onready var timer: Timer = $Timer
@onready var cane: Area2D = $"."
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision: CollisionShape2D = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready() -> void:
	cane.visible = false


func swing() -> void:
	proj_speed = pebble.speed - 150
	pebble.speed = 151
	hard_dir = pebble.cane_dir
	position = pebble.position
	hard_pos_y = pebble.position.y
	cane.visible = true
	timer.start()
	animated_sprite.play("throw")
	
func _physics_process(delta: float) -> void:
	position.y = hard_pos_y
	if cane.visible:
		position.x += (speed+1.0*(proj_speed+1)) * hard_dir * delta

		
func _on_timer_timeout() -> void:
	cane.visible = false
	
	
	


func _on_body_entered(body: Node2D) -> void:
	pass
	
