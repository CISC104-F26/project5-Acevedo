extends AnimatedSprite2D

var hardness = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Globalvar.scoopingVAN:
		frame = 0
		$ScoopProgress.texture_progress = preload("res://Assets/VANprog-32x.png")
		hardness = randi_range(6,12)
	elif Globalvar.scoopingCHOC:
		frame = 1
		$ScoopProgress.texture_progress = preload("res://Assets/CHOCprog-32x.png")
		hardness = randi_range(10,35)
	elif Globalvar.scoopingFLUFF:
		frame = 2
		$ScoopProgress.texture_progress = preload("res://Assets/FLUFFprog-32x.png")
		hardness = randi_range(15,75)
	elif Globalvar.scoopingRC:
		frame = 3
		$ScoopProgress.texture_progress = preload("res://Assets/RCprog-32x.png")
		hardness = randi_range(5,10)
	elif Globalvar.scoopingMUD:
		frame = 4
		$ScoopProgress.texture_progress = preload("res://Assets/MUDprog-32x.png")
		hardness = randi_range(6,45)
	elif Globalvar.scoopingBHT:
		frame = 5
		$ScoopProgress.texture_progress = preload("res://Assets/BHTprog-32x.png")
		hardness = randi_range(10,25)
	elif Globalvar.scoopingNINE:
		frame = 6
		$ScoopProgress.texture_progress = preload("res://Assets/1923prog-32x.png")
		hardness = randi_range(6,15)
	elif Globalvar.scoopingPCL:
		frame = 7
		$ScoopProgress.texture_progress = preload("res://Assets/PCLprog-32x.png")
		hardness = randi_range(15,80)
	elif Globalvar.scoopingGMA:
		frame = 8
		$ScoopProgress.texture_progress = preload("res://Assets/GMAprog-32x.png")
		hardness = randi_range(10,25)
	elif Globalvar.scoopingMCC:
		frame = 9
		$ScoopProgress.texture_progress = preload("res://Assets/MCCprog-32x.png")
		hardness = randi_range(8,20)
	elif Globalvar.scoopingMNC:
		frame = 10
		$ScoopProgress.texture_progress = preload("res://Assets/MNCprog-32x.png")
		hardness = randi_range(7,15)
	elif Globalvar.scoopingPGT:
		frame = 11
		$ScoopProgress.texture_progress = preload("res://Assets/PGTprog-32x.png")
		hardness = randi_range(5,15)
	elif Globalvar.scoopingAN:
		frame = 12
		$ScoopProgress.texture_progress = preload("res://Assets/ANprog-32x.png")
		hardness = randi_range(10,35)
	elif Globalvar.scoopingCNC:
		frame = 13
		$ScoopProgress.texture_progress = preload("res://Assets/CNCprog-32x.png")
		hardness = randi_range(7,18)
	elif Globalvar.scoopingNOM:
		frame = 14
		$ScoopProgress.texture_progress = preload("res://Assets/NOMprog-32x.png")
		hardness = randi_range(10,30)
	elif Globalvar.scoopingTONA:
		frame = 15
		$ScoopProgress.texture_progress = preload("res://Assets/TONAprog-32x.png")
		hardness = randi_range(4,15)
	elif Globalvar.scoopingCDD:
		frame = 16
		$ScoopProgress.texture_progress = preload("res://Assets/CDDprog-32x.png")
		hardness = randi_range(5,25)
	elif Globalvar.scoopingPEACH:
		frame = 17
		$ScoopProgress.texture_progress = preload("res://Assets/PEACHprog-32x.png")
		hardness = randi_range(8,25)
	elif Globalvar.scoopingBR:
		frame = 18
		$ScoopProgress.texture_progress = preload("res://Assets/BRprog-32x.png")
		hardness = randi_range(5,10)
	elif Globalvar.scoopingSTRAW:
		frame = 19
		$ScoopProgress.texture_progress = preload("res://Assets/STRAWprog-32x.png")
		hardness = randi_range(8,25)
	elif Globalvar.scoopingCOFFEE:
		frame = 20
		$ScoopProgress.texture_progress = preload("res://Assets/COFFEEprog-32x.png")
		hardness = randi_range(8,20)
	elif Globalvar.scoopingBP:
		frame = 21
		$ScoopProgress.texture_progress = preload("res://Assets/BPprog-32x.png")
		hardness = randi_range(2,8)
	elif Globalvar.scoopingBING:
		frame = 22
		$ScoopProgress.texture_progress = preload("res://Assets/BINGprog-32x.png")
		hardness = randi_range(8,30)
	elif Globalvar.scoopingUBE:
		frame = 23
		$ScoopProgress.texture_progress = preload("res://Assets/UBEprog-32x.png")
		hardness = randi_range(6,12)
	else: push_error("An ice cream flavor was not found.")
	$ScoopProgress.max_value = hardness

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact"):
		hardness -= 1
		$ScoopProgress.value += 1
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
