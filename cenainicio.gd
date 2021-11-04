extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.play()
	#$Enter.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_pressed("ui_accept")):
		$MudaMenu.play("Mudacena")
		$Enter.play()


#	pass


func muda_cena(anim_name):
	get_tree().change_scene("res://cenamenu.tscn")
	pass # Replace with function body.
