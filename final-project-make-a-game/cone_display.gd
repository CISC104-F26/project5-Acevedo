extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Globalvar.hasWaffle:
		visible = true
		frame = 0
	elif Globalvar.hasSugar:
		visible = true
		frame = 1
	elif Globalvar.hasCake:
		visible = true
		frame = 2
	elif Globalvar.hasSm:
		visible = true
		frame = 3
	elif Globalvar.hasMed:
		visible = true
		frame = 4
	elif Globalvar.hasLg:
		visible = true
		frame = 5
	else:
		visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
