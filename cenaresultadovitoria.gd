extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VarVoltas.text = str (GlobalScript.voltas)
	$VarDificuldade.text = GlobalScript.nivel_dificuldade
	$VarTempoVolta.text = str(round(GlobalScript.tempo_volta))+ "  Segundos"
	$VarPista.text = "Pista "+ str (GlobalScript.pista)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func voltar_menu():
	$SelecionarMenu.play()
	get_tree().change_scene("res://cenamenu.tscn")
	pass # Replace with function body.


func ver_ranking():
	$SelecionarMenu.play()
	get_tree().change_scene("res://cenaranking.tscn")
	pass # Replace with function body.


func _on_VerRanking_mouse_entered():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func _on_voltarmenu_mouse_entered():
	$MouseEntrabotao.play()
	pass # Replace with function body.
