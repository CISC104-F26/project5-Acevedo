extends AnimatedSprite2D

var hardness = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Globalvar.scoopingVAN:
		frame = 0
		hardness = randi_range(6,12)
	elif Globalvar.scoopingCHOC:
		frame = 1
		hardness = randi_range(10,25)
	elif Globalvar.scoopingFLUFF:
		frame = 2
		hardness = randi_range(15,30)
	elif Globalvar.scoopingRC:
		frame = 3
		hardness = randi_range(5,10)
	elif Globalvar.scoopingMUD:
		frame = 4
		hardness = randi_range(6,30)
	elif Globalvar.scoopingBHT:
		frame = 5
		hardness = randi_range(10,20)
	elif Globalvar.scoopingNINE:
		frame = 6
		hardness = randi_range(6,15)
	elif Globalvar.scoopingPCL:
		frame = 7
		hardness = randi_range(15,60)
	elif Globalvar.scoopingGMA:
		frame = 8
		hardness = randi_range(10,25)
	elif Globalvar.scoopingMCC:
		frame = 9
		hardness = randi_range(8,16)
	elif Globalvar.scoopingMNC:
		frame = 10
		hardness = randi_range(7,15)
	elif Globalvar.scoopingPGT:
		frame = 11
		hardness = randi_range(5,15)
	elif Globalvar.scoopingAN:
		frame = 12
		hardness = randi_range(10,25)
	elif Globalvar.scoopingCNC:
		frame = 13
		hardness = randi_range(7,15)
	elif Globalvar.scoopingNOM:
		frame = 14
		hardness = randi_range(10,25)
	elif Globalvar.scoopingTONA:
		frame = 15
		hardness = randi_range(3,10)
	elif Globalvar.scoopingCDD:
		frame = 16
		hardness = randi_range(5,20)
	elif Globalvar.scoopingPEACH:
		frame = 17
		hardness = randi_range(8,25)
	elif Globalvar.scoopingBR:
		frame = 18
		hardness = randi_range(5,10)
	elif Globalvar.scoopingSTRAW:
		frame = 19
		hardness = randi_range(8,20)
	elif Globalvar.scoopingCOFFEE:
		frame = 20
		hardness = randi_range(8,20)
	elif Globalvar.scoopingBP:
		frame = 21
		hardness = randi_range(2,8)
	elif Globalvar.scoopingBING:
		frame = 22
		hardness = randi_range(8,24)
	elif Globalvar.scoopingUBE:
		frame = 23
		hardness = randi_range(6,12)
	else: push_error("An ice cream flavor was not found.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact"):
		hardness -= 1
	if hardness <= 0:
		Globalvar.scoopingVAN = false
		Globalvar.scoopingCHOC = false
		Globalvar.scoopingFLUFF = false
		Globalvar.scoopingRC = false
		Globalvar.scoopingMUD = false
		Globalvar.scoopingBHT = false
		Globalvar.scoopingNINE = false
		Globalvar.scoopingPCL = false
		Globalvar.scoopingGMA = false
		Globalvar.scoopingMCC = false
		Globalvar.scoopingMNC = false
		Globalvar.scoopingPGT = false
		Globalvar.scoopingAN = false
		Globalvar.scoopingCNC = false
		Globalvar.scoopingNOM = false
		Globalvar.scoopingTONA = false
		Globalvar.scoopingCDD = false
		Globalvar.scoopingPEACH = false
		Globalvar.scoopingBR = false
		Globalvar.scoopingSTRAW = false
		Globalvar.scoopingCOFFEE = false
		Globalvar.scoopingBP = false
		Globalvar.scoopingBING = false
		Globalvar.scoopingUBE = false
		get_tree().change_scene_to_file("res://main_game.tscn")
