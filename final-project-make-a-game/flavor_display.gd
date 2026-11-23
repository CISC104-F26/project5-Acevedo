extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Globalvar.scoopedVAN:
		frame = 0
		visible = true
	elif Globalvar.scoopedCHOC:
		frame = 1
		visible = true
	elif Globalvar.scoopedFLUFF:
		frame = 2
		visible = true
	elif Globalvar.scoopedRC:
		frame = 3
		visible = true
	elif Globalvar.scoopedMUD:
		frame = 4
		visible = true
	elif Globalvar.scoopedBHT:
		frame = 5
		visible = true
	elif Globalvar.scoopedNINE:
		frame = 6
		visible = true
	elif Globalvar.scoopedPCL:
		frame = 7
		visible = true
	elif Globalvar.scoopedGMA:
		frame = 8
		visible = true
	elif Globalvar.scoopedMCC:
		frame = 9
		visible = true
	elif Globalvar.scoopedMNC:
		frame = 10
		visible = true
	elif Globalvar.scoopedPGT:
		frame = 11
		visible = true
	elif Globalvar.scoopedAN:
		frame = 12
		visible = true
	elif Globalvar.scoopedCNC:
		frame = 13
		visible = true
	elif Globalvar.scoopedNOM:
		frame = 14
		visible = true
	elif Globalvar.scoopedTONA:
		frame = 15
		visible = true
	elif Globalvar.scoopedCDD:
		frame = 16
		visible = true
	elif Globalvar.scoopedPEACH:
		frame = 17
		visible = true
	elif Globalvar.scoopedBR:
		frame = 18
		visible = true
	elif Globalvar.scoopedSTRAW:
		frame = 19
		visible = true
	elif Globalvar.scoopedCOFFEE:
		frame = 20
		visible = true
	elif Globalvar.scoopedBP:
		frame = 21
		visible = true
	elif Globalvar.scoopedBING:
		frame = 22
		visible = true
	elif Globalvar.scoopedUBE:
		frame = 23
		visible = true
	else:
		visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
