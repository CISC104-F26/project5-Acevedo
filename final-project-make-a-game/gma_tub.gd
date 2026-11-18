extends Area2D

var GMAscoopable = false
var GMAstock = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	GMAscoopable = true
	$GMAlabel.visible = true


func _on_mouse_exited() -> void:
	GMAscoopable = false
	$GMAlabel.visible = false
