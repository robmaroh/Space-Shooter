extends Control

@export var level_scene: PackedScene

func _ready() -> void:
	$"CenterContainer/VBoxContainer/Score".text = $"CenterContainer/VBoxContainer/Score".text + str(Global.score)

func _input(_event: InputEvent) -> void:
	if Input.is_action_pressed("shoot"):
		get_tree().change_scene_to_packed(level_scene)
