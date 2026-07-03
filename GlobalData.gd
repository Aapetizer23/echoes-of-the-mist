extends Node2D


@onready var player: CharacterBody2D = $"../Node2D/Game/Player"
const ENEMY = preload("uid://hl7g2dvajebj")
@onready var health: int = 20
@onready var sp: int = 20
@onready var dead: bool = false
@onready var cash: int = 0
@onready var enemynumber: int = 0
@onready var blocking: bool = false
@onready var played: bool = true
@onready var extrasp: int = 0
@onready var keycollected: bool = false

func _process(delta: float) -> void:
	player = $"../Node2D/Game/Player"
	if dead == true:
		get_tree().reload_current_scene()
		await get_tree().tree_changed
		dead = false
		blocking = false
		health = 20
		sp = 20
		enemynumber = 0
		extrasp = 0
		cash = 0
		keycollected = false
