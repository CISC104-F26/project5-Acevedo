extends Area2D
var CHOCscoopable = false
var CHOCstock = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if CHOCscoopable and Input.is_action_just_pressed("select"):
		get_tree().change_scene_to_file("res://scoop_minigame.tscn")
	pass


func _on_mouse_entered() -> void:
	CHOCscoopable = true
	$CHOClabel.visible = true

func _on_mouse_exited() -> void:
	CHOCscoopable = false
	$CHOClabel.visible = false
