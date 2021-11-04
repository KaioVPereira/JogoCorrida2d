extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	
		
	if (GlobalScript.nivel_dificuldade == "Fácil"):
		GlobalScript.qtd_vidas = 5
	if (GlobalScript.nivel_dificuldade == "Médio"):
		GlobalScript.qtd_vidas = 3
	if (GlobalScript.nivel_dificuldade == "Difícil"):
		GlobalScript.qtd_vidas = 1
	pass # Replace with function body.
	$Somstart.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func colisao(body):
	if (body.name=="Carro"):
		print ("Bateu") 
		GlobalScript.velocidade -= 200
		if GlobalScript.nivel_dificuldade == "Fácil" and GlobalScript.voltas < 3:
			GlobalScript.qtd_vidas -= 1
			$impacto.play()
		if GlobalScript.nivel_dificuldade == "Médio" and GlobalScript.voltas < 5:
			GlobalScript.qtd_vidas -= 1
			$impacto.play()
		if GlobalScript.nivel_dificuldade == "Difícil" and GlobalScript.voltas < 10:
			GlobalScript.qtd_vidas -= 1
			$impacto.play()
		#print (GlobalScript.qtd_vidas)
		if (GlobalScript.qtd_vidas==0):
			get_tree().change_scene("res://cenaderrota.tscn")


func contagem_voltas(body):
	
	if (GlobalScript.velocidade > 0 and GlobalScript.tempo_volta > 12):
		GlobalScript.voltas += 1 
		$ContaVoltas.play()
		if (GlobalScript.voltas==3 and GlobalScript.nivel_dificuldade =="Fácil"):
			$Chegada.play("Bandeirada")
			$comemoracao.play() 
			$Fogos.play()
		elif (GlobalScript.voltas==5 and GlobalScript.nivel_dificuldade =="Médio"):
			$Chegada.play("Bandeirada")
			$comemoracao.play() 
			$Fogos.play()
		elif (GlobalScript.voltas==10 and GlobalScript.nivel_dificuldade =="Difícil"):
			$Chegada.play("Bandeirada")
			$comemoracao.play() 
			$Fogos.play()
	
func chegada_conclusao(anim_name):
	$Saidadatela.play("saidaparavitoria")
	pass # Replace with function body.
	
func anim_saida_tela(anim_name):
	get_tree().change_scene("res://cenavitoria.tscn")
	pass # Replace with function body.
