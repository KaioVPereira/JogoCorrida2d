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
	$selecionar.play()
	$saircena.play("voltamenu")
	pass # Replace with function body.

func voltaraomenu(anim_name):
	get_tree().change_scene("res://cenamenu.tscn")
	pass # Replace with function body.


func selec_1():
	$selecionar.play()
	GlobalScript.carro = 1
	$saircena.play("voltamenu")
	pass # Replace with function body.


func selec_2():
	$selecionar.play()
	GlobalScript.carro = 2
	$saircena.play("voltamenu")
	pass # Replace with function body.


func selec_3():
	$selecionar.play()
	GlobalScript.carro = 3
	$saircena.play("voltamenu")
	pass # Replace with function body.


func selec_4():
	$selecionar.play()
	GlobalScript.carro = 4
	$saircena.play("voltamenu")
	pass # Replace with function body.


func selec_5():
	$selecionar.play()
	GlobalScript.carro = 5
	$saircena.play("voltamenu")
	pass # Replace with fu	
	
	
func selec_6():
	$selecionar.play()
	GlobalScript.carro = 6
	$saircena.play("voltamenu")
	pass # Replace with function body.
	
func selec_7():
	$selecionar.play()
	GlobalScript.carro = 7
	$saircena.play("voltamenu")
	pass 

func selec_8():
	$selecionar.play()
	GlobalScript.carro = 8
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_9():
	$selecionar.play()
	GlobalScript.carro = 9
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_10():
	$selecionar.play()
	GlobalScript.carro = 10
	$saircena.play("voltamenu")
	pass # Replace with function body.
	
func selec_11():
	$selecionar.play()
	GlobalScript.carro = 11
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_12():
	$selecionar.play()
	GlobalScript.carro = 12
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_13():
	$selecionar.play()
	GlobalScript.carro = 13
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_14():
	$selecionar.play()
	GlobalScript.carro = 14
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_15():
	$selecionar.play()
	GlobalScript.carro = 15
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_16():
	$selecionar.play()
	GlobalScript.carro = 16
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_17():
	$selecionar.play()
	GlobalScript.carro = 17
	$saircena.play("voltamenu")
	pass # Replace with function body.

func selec_18():
	$selecionar.play()
	GlobalScript.carro = 18
	$saircena.play("voltamenu")
	pass # Replace with function body.

func mouseentra1():
	$MouseEntra.play()
	pass # Replace with function body.


func mouseentra2():
	$MouseEntra.play()
	pass # Replace with function body.


func mouseentra3():
	$MouseEntra.play()
	pass # Replace with function body.


func mouseentra4():
	$MouseEntra.play()
	pass # Replace with function body.


func mouseentra5():
	$MouseEntra.play()
	pass # Replace with function body.


func mouseentra6():
	$MouseEntra.play()
	pass # Replace with function body.


func sairentramouse():
	$MouseEntra.play()
	pass # Replace with function body.











































