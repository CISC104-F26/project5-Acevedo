extends Area2D
var UBEscoopable = false
var UBEstock = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if UBEscoopable and Input.is_action_just_pressed("select"):
		Globalvar.scoopingUBE = true
		get_tree().change_scene_to_file("res://scoop_minigame.tscn")
	pass


func _on_mouse_entered() -> void:
	UBEscoopable = true
	$UBElabel.visible = true


func _on_mouse_exited() -> void:
	UBEscoopable = false
	$UBElabel.visible = false
