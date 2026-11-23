extends Area2D
var CakeGrabbable = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("select") and CakeGrabbable:
		Globalvar.hasWaffle = false
		Globalvar.hasSugar = false
		Globalvar.hasCake = true
		Globalvar.hasSm = false
		Globalvar.hasMed = false
		Globalvar.hasLg = false
		get_tree().change_scene_to_file("res://main_game.tscn")


func _on_mouse_entered() -> void:
	CakeGrabbable = true
	$CakeLabel.visible = true


func _on_mouse_exited() -> void:
	CakeGrabbable = false
	$CakeLabel.visible = false
