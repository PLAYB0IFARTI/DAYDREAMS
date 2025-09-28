extends Area2D


var health = 2
var dmg = 10
const SPEED = 30
var direction = --1
@onready var left_cast: RayCast2D = $left_cast
@onready var right_cast: RayCast2D = $right_cast
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var cane: Area2D = $"../cane"
@onready var timer: Timer = $Timer
@onready var enemy: Area2D = $"."
@onready var pebble: CharacterBody2D = %pebble


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animated_sprite_2d.flip_h = true
	
func _physics_process(delta: float) -> void:
	if left_cast.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	if right_cast.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	position.x += SPEED * direction * delta

func _on_area_entered(area: Area2D) -> void:
	timer.start()
	animated_sprite_2d.flip_v = true



func _on_timer_timeout() -> void:
	enemy.visible = false


func _on_body_entered(body: Node2D) -> void:
	if enemy.visible:
		pebble.health -= 34
