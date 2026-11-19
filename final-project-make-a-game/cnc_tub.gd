extends Area2D
var CNCscoopable = false
var CNCstock = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if CNCscoopable and Input.is_action_just_pressed("Interact"):
		get_tree().change_scene_to_file("res://scoop_minigame.tscn")
	pass


func _on_mouse_entered() -> void:
	CNCscoopable = true
	$CNClabel.visible = true


func _on_mouse_exited() -> void:
	CNCscoopable = false
	$CNClabel.visible = false
