extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



		
		#print (GlobalScript.voltas)
		
	
func _ready():
	
	
	
	
	
	if (GlobalScript.nivel_dificuldade == "Fácil" and GlobalScript.pista == 1):
		GlobalScript.tempo_jogo = 23
	if (GlobalScript.nivel_dificuldade == "Médio" and GlobalScript.pista == 1):
		GlobalScript.tempo_jogo = 20
	if (GlobalScript.nivel_dificuldade == "Difícil" and GlobalScript.pista == 1):
		GlobalScript.tempo_jogo = 18
	
	if (GlobalScript.nivel_dificuldade == "Fácil" and GlobalScript.pista == 2):
		GlobalScript.tempo_jogo = 23
	if (GlobalScript.nivel_dificuldade == "Médio" and GlobalScript.pista == 2):
		GlobalScript.tempo_jogo = 21
	if (GlobalScript.nivel_dificuldade == "Difícil" and GlobalScript.pista == 2):
		GlobalScript.tempo_jogo = 19
	
	$Tempo_jogo.wait_time = GlobalScript.tempo_jogo
	$Tempo_jogo.start()
	
	


func aumenta_tempo_volta(body):
	
	if (GlobalScript.velocidade > 0 and GlobalScript.tempo_volta > 12 and GlobalScript.nivel_dificuldade == "Fácil" and GlobalScript.pista == 1):
		var novo_tempo = $Tempo_jogo.time_left + 20
		$Tempo_jogo.stop()
		$Tempo_jogo.wait_time = novo_tempo
		$Tempo_jogo.start()
		print ($Tempo_jogo.wait_time)
	
	if (GlobalScript.velocidade > 0 and GlobalScript.tempo_volta > 12 and GlobalScript.nivel_dificuldade == "Médio" and GlobalScript.pista == 1):
		var novo_tempo = $Tempo_jogo.time_left + 17
		$Tempo_jogo.stop()
		$Tempo_jogo.wait_time = novo_tempo
		$Tempo_jogo.start()
		print ($Tempo_jogo.wait_time)
		
	if (GlobalScript.velocidade > 0 and GlobalScript.tempo_volta > 12 and GlobalScript.nivel_dificuldade == "Difícil" and GlobalScript.pista == 1):
		var novo_tempo = $Tempo_jogo.time_left + 14
		$Tempo_jogo.stop()
		$Tempo_jogo.wait_time = novo_tempo
		$Tempo_jogo.start()
		print ($Tempo_jogo.wait_time)
		
	if (GlobalScript.velocidade > 0 and GlobalScript.tempo_volta > 12 and GlobalScript.nivel_dificuldade == "Fácil" and GlobalScript.pista == 2):
		var novo_tempo = $Tempo_jogo.time_left + 22
		$Tempo_jogo.stop()
		$Tempo_jogo.wait_time = novo_tempo
		$Tempo_jogo.start()
		print ($Tempo_jogo.wait_time)
	
	if (GlobalScript.velocidade > 0 and GlobalScript.tempo_volta > 12 and GlobalScript.nivel_dificuldade == "Médio" and GlobalScript.pista == 2):
		var novo_tempo = $Tempo_jogo.time_left + 19
		$Tempo_jogo.stop()
		$Tempo_jogo.wait_time = novo_tempo
		$Tempo_jogo.start()
		print ($Tempo_jogo.wait_time)
		
	if (GlobalScript.velocidade > 0 and GlobalScript.tempo_volta > 12 and GlobalScript.nivel_dificuldade == "Difícil" and GlobalScript.pista == 2):
		var novo_tempo = $Tempo_jogo.time_left + 16
		$Tempo_jogo.stop()
		$Tempo_jogo.wait_time = novo_tempo
		$Tempo_jogo.start()
		print ($Tempo_jogo.wait_time)
		

func atualizar_hud():
	if (GlobalScript.tempo_volta > 3 ):
		$Vidas.text = str(GlobalScript.qtd_vidas)	
		$Tempo.text = str(int($Tempo_jogo.time_left))
		$Voltas.text = str(GlobalScript.voltas)
		
func toca_countdown():
	if $Tempo_jogo.time_left < 4 and not $countdown.playing:
		$countdown.play()
	elif $Tempo_jogo.time_left >= 4:
		$countdown.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	GlobalScript.tempo_volta+= delta	
	$Label.text = str(round(GlobalScript.tempo_volta))
	# print (str(round(GlobalScript.tempo_volta)))
	atualizar_hud()
	toca_countdown()
	

	


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass









func ir_para_derrota():
	if GlobalScript.nivel_dificuldade == "Fácil" and GlobalScript.voltas < 3:
		get_tree().change_scene("res://cenaderrota.tscn")
	elif GlobalScript.nivel_dificuldade == "Médio" and GlobalScript.voltas < 5:
		get_tree().change_scene("res://cenaderrota.tscn")
	elif GlobalScript.nivel_dificuldade == "Difícil" and GlobalScript.voltas < 10:
		get_tree().change_scene("res://cenaderrota.tscn")
		
	
