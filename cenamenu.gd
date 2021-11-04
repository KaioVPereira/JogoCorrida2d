extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	GlobalScript.redefinir_config()
	
	$EntradaMenu.play("Entradamenu")
	
	$SomAmbiente.play()
	
	$OptionButton.add_item("Fácil")
	$OptionButton.add_item("Médio")
	$OptionButton.add_item("Difícil")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func iniciar_jogo():
	
	GlobalScript.nivel_dificuldade = $OptionButton.text
	
	if GlobalScript.pista == 0 or GlobalScript.carro == 0:
		$AcceptDialog.popup_centered(Vector2(300,50))
	if GlobalScript.pista == 1 and GlobalScript.carro != 0:
		get_tree().change_scene("res://pista.tscn")
	if GlobalScript.pista == 2 and GlobalScript.carro != 0:
		get_tree().change_scene("res://pista2.tscn")
	pass # Replace with function body.


func ir_para_instrucoes():
	get_tree().change_scene("res://cenainstrucoes.tscn")
	pass # Replace with function body.


func selecionar_personagem():
	$SelecionarMenu.play()
	$AnimSeleCarros.play("SeleCarros")
	
func anim_muda_cena_selectcarros(anim_name):
		get_tree().change_scene("res://cenaselecaocarros.tscn")

func ver_ranking():
	$SelecionarMenu.play()
	$AnimVerRank.play("VerRank")
func ir_para_ranking(anim_name):
	get_tree().change_scene("res://cenaranking.tscn")
	

func selecionar_pista():
	$SelecionarMenu.play()
	$AnimSelepista.play("SeleCarros")
	pass # Replace with function body.


func Seleccarrobutomsom():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func mouseentraranking():
	$MouseEntrabotao.play()
	pass # Replace with function body.
	

func mouseentrapista():
	$MouseEntrabotao.play()
	pass # Replace with function body.
	
	
func mouseentradificuldade():
	$MouseEntrabotao.play()
	pass # Replace with function body.

func mouseentrainstrucoes():
	$MouseEntrabotao.play()
	pass # Replace with function body.



func mouseentrainiciarjogo():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func Sair_jogo():
	get_tree().change_scene("res://cenalogin.tscn")
	pass # Replace with function body.


func anim_muda_cena_selectpista(anim_name):
	get_tree().change_scene("res://cenaselecionarpista.tscn")
	pass # Replace with function body.
