extends Area2D
var MNCscoopable = false
var MNCstock = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if MNCscoopable and Input.is_action_just_pressed("Interact"):
		get_tree().change_scene_to_file("res://scoop_minigame.tscn")
	pass


func _on_mouse_entered() -> void:
	MNCscoopable = true
	$MNClabel.visible = true


func _on_mouse_exited() -> void:
	MNCscoopable = false
	$MNClabel.visible = false
