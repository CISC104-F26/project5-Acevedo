extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
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
