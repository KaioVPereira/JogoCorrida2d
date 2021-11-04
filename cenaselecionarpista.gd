extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$SomAmbiente.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func voltar_menu():
	$SelecionarMenu.play()
	$saircena.play("voltamenu")
	pass # Replace with function body.


func selec_pista1():
	GlobalScript.pista = 1
	$SelecionarMenu.play()
	$saircena.play("voltamenu")
	pass # Replace with function body.


func selec_pista2():
	GlobalScript.pista = 2
	$SelecionarMenu.play()
	$saircena.play("voltamenu")
	pass # Replace with function body.


func voltarr_menu(anim_name):
	get_tree().change_scene("res://cenamenu.tscn")
	pass # Replace with function body.


func _on_Button_mouse_entered():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func _on_Pista1_mouse_entered():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func _on_Pista2_mouse_entered():
	$MouseEntrabotao.play()
	pass # Replace with function body.
