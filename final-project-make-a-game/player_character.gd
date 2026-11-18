extends CharacterBody2D

var Cab1Scoopable = false
var Cab2Scoopable = false
var Cab3Scoopable = false
var CupsConesReachable = false
var Restockable = false
var Orderable = false
const SPEED = 200.0

func _ready() -> void:
	$Instructions.text = ""
	if Globalvar.savedposition:
		position = Globalvar.savedposition

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		velocity.y = -1
	elif Input.is_action_pressed("move_down"):
		velocity.y = 1
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	if Input.is_action_pressed("move_left"):
		velocity.x = -1
	elif Input.is_action_pressed("move_right"):
		velocity.x = 1
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	velocity = velocity.normalized() * SPEED
	move_and_slide()

func _process(delta: float) -> void:
	if Cab1Scoopable and Input.is_action_just_pressed("Interact"):
		Globalvar.savedposition = position
		get_tree().change_scene_to_file("res://scoop_1.tscn")
	else: pass

func _on_scoop_cabinet_1_body_entered(body: Node2D) -> void:
	print("Cabinet 1 is scoopable.")
	Cab1Scoopable = true
	$Instructions.text = "[SPACE] To Scoop"


func _on_scoop_cabinet_1_body_exited(body: Node2D) -> void:
	print("Cabinet 1 is no longer scoopable.")
	Cab1Scoopable = false
	$Instructions.text = ""


func _on_scoop_cabinet_2_body_entered(body: Node2D) -> void:
	print("Cabinet 2 is scoopable.")
	Cab2Scoopable = true
	$Instructions.text = "[SPACE] To Scoop"


func _on_scoop_cabinet_2_body_exited(body: Node2D) -> void:
	print("Cabinet 2 is no longer scoopable.")
	Cab2Scoopable = false
	$Instructions.text = ""


func _on_scoop_cabinet_3_body_entered(body: Node2D) -> void:
	print("Cabinet 3 is scoopable.")
	Cab3Scoopable = true
	$Instructions.text = "[SPACE] To Scoop"

func _on_scoop_cabinet_3_body_exited(body: Node2D) -> void:
	print("Cabinet 3 is no longer scoopable.")
	Cab3Scoopable = false
	$Instructions.text = ""

func _on_restock_area_body_entered(body: Node2D) -> void:
	print("Restockable.")
	Restockable = true
	$Instructions.text = "[SPACE] To Restock"

func _on_restock_area_body_exited(body: Node2D) -> void:
	print("No longer restockable.")
	Restockable = false
	$Instructions.text = ""

func _on_cups_cones_area_body_entered(body: Node2D) -> void:
	print("Cups & Cones are reachable.")
	CupsConesReachable = true
	$Instructions.text = "[SPACE] To Pick a Cone/Cup"

func _on_cups_cones_area_body_exited(body: Node2D) -> void:
	print("Cups & Cones are no longer reachable.")
	CupsConesReachable = false
	$Instructions.text = ""

func _on_order_area_body_entered(body: Node2D) -> void:
	print("Orderable.")
	Orderable = true
	$Instructions.text = "[SPACE] To Take Order"

func _on_order_area_body_exited(body: Node2D) -> void:
	print("No longer orderable.")
	Orderable = false
	$Instructions.text = ""
