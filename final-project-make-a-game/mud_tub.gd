extends Area2D
var MUDscoopable = false
var MUDstock = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if MUDscoopable and Input.is_action_just_pressed("select"):
		Globalvar.scoopingMUD = true
		get_tree().change_scene_to_file("res://scoop_minigame.tscn")
	pass


func _on_mouse_entered() -> void:
	MUDscoopable = true
	$MUDlabel.visible = true


func _on_mouse_exited() -> void:
	MUDscoopable = false
	$MUDlabel.visible = false
