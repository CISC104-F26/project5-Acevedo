extends Area2D
var PGTscoopable = false
var PGTstock = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if PGTscoopable and Input.is_action_just_pressed("Interact"):
		get_tree().change_scene_to_file("res://scoop_minigame.tscn")
	pass


func _on_mouse_entered() -> void:
	PGTscoopable = true
	$PGTlabel.visible = true


func _on_mouse_exited() -> void:
	PGTscoopable = false
	$PGTlabel.visible = false
