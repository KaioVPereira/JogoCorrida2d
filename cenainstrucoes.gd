extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func voltar_menu():
	$SelecionarMenu.play()
	get_tree().change_scene("res://cenamenu.tscn")
	pass # Replace with function body.


func _on_Button_mouse_entered():
	$MouseEntrabotao.play()
	pass # Replace with function body.
