extends Area2D
var MedGrabbable = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("select") and MedGrabbable:
		Globalvar.hasWaffle = false
		Globalvar.hasSugar = false
		Globalvar.hasCake = false
		Globalvar.hasSm = false
		Globalvar.hasMed = true
		Globalvar.hasLg = false
		get_tree().change_scene_to_file("res://main_game.tscn")


func _on_mouse_entered() -> void:
	MedGrabbable = true
	$MedLabel.visible = true


func _on_mouse_exited() -> void:
	MedGrabbable = false
	$MedLabel.visible = false
