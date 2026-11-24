class_name player extends CharacterBody2D

var Cab1Scoopable = false
var Cab2Scoopable = false
var Cab3Scoopable = false
var CupsConesReachable = false
var Restockable = false
var Orderable = false
var Scoopable = false
const SPEED = 10000.0

func _ready() -> void:
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
	velocity = velocity.normalized() * SPEED * delta
	move_and_slide()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact") and Scoopable and Cab1Scoopable:
		Globalvar.savedposition = position
		get_tree().change_scene_to_file("res://scoop_1.tscn")
	elif Input.is_action_just_pressed("Interact") and Scoopable and Cab2Scoopable:
		Globalvar.savedposition = position
		get_tree().change_scene_to_file("res://scoop_2.tscn")
	elif Input.is_action_just_pressed("Interact") and Scoopable and Cab3Scoopable:
		Globalvar.savedposition = position
		get_tree().change_scene_to_file("res://scoop_3.tscn")
	elif Input.is_action_just_pressed("Interact") and Scoopable and CupsConesReachable:
		Globalvar.savedposition = position
		get_tree().change_scene_to_file("res://cups_cones.tscn")
	else: pass
	if Input.is_action_pressed("move_up"):
		rotation_degrees = 0
	if Input.is_action_pressed("move_right"):
		rotation_degrees = 90
	if Input.is_action_pressed("move_down"):
		rotation_degrees = 180
	if Input.is_action_pressed("move_left"):
		rotation_degrees = 270
	if Input.is_action_pressed("move_up") and Input.is_action_pressed("move_right"):
		rotation_degrees = 45
	if Input.is_action_pressed("move_up") and Input.is_action_pressed("move_left"):
		rotation_degrees = 315
	if Input.is_action_pressed("move_down") and Input.is_action_pressed("move_right"):
		rotation_degrees = 135
	if Input.is_action_pressed("move_down") and Input.is_action_pressed("move_left"):
		rotation_degrees = 225
	

func _on_scoop_cabinet_1_body_entered(body: player) -> void:
	Cab1Scoopable = true
	$Instructions.text = "[SPACE] To Scoop"


func _on_scoop_cabinet_1_body_exited(body: player) -> void:
	Cab1Scoopable = false
	$Instructions.text = ""


func _on_scoop_cabinet_2_body_entered(body: player) -> void:
	Cab2Scoopable = true
	$Instructions.text = "[SPACE] To Scoop"


func _on_scoop_cabinet_2_body_exited(body: player) -> void:
	Cab2Scoopable = false
	$Instructions.text = ""


func _on_scoop_cabinet_3_body_entered(body: player) -> void:
	Cab3Scoopable = true
	$Instructions.text = "[SPACE] To Scoop"

func _on_scoop_cabinet_3_body_exited(body: player) -> void:
	Cab3Scoopable = false
	$Instructions.text = ""

func _on_restock_area_body_entered(body: player) -> void:
	print("Restockable.")
	Restockable = true
	$Instructions.text = "[SPACE] To Restock"

func _on_restock_area_body_exited(body: player) -> void:
	print("No longer restockable.")
	Restockable = false
	$Instructions.text = ""

func _on_cups_cones_area_body_entered(body: player) -> void:
	print("Cups & Cones are reachable.")
	CupsConesReachable = true
	$Instructions.text = "[SPACE] To Pick a Cone/Cup"

func _on_cups_cones_area_body_exited(body: player) -> void:
	print("Cups & Cones are no longer reachable.")
	CupsConesReachable = false
	$Instructions.text = ""

func _on_order_area_body_entered(body: player) -> void:
	print("Orderable.")
	Orderable = true
	$Instructions.text = "[SPACE] To Take Order"

func _on_order_area_body_exited(body: player) -> void:
	print("No longer orderable.")
	Orderable = false
	$Instructions.text = ""

func _on_exhaustion_timeout() -> void:
	Scoopable = true
