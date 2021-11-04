extends KinematicBody2D



export (float) var rotation_speed = 2.0

var movimento = Vector2()
var rotacao_dir = 0



	

func le_entrada():
	rotacao_dir = 0
	movimento = Vector2(GlobalScript.velocidade,0 ).rotated(rotation)
	if Input.is_action_pressed("pdireita"):
		rotacao_dir += 1
	if Input.is_action_pressed("pesquerda"):
		rotacao_dir -= 1
	if Input.is_action_pressed("pbaixo"):
		GlobalScript.velocidade = GlobalScript.velocidade -11
	if Input.is_action_pressed("pcima"):
		GlobalScript.velocidade = GlobalScript.velocidade + 5
	if (GlobalScript.velocidade < -100):
		GlobalScript.velocidade = -100
	if (GlobalScript.velocidade > 900):
		GlobalScript.velocidade = 900
		
	if (GlobalScript.tempo_volta < 3):
		GlobalScript.velocidade = 0
	if Input.is_action_just_pressed("pcima") and GlobalScript.velocidade < 350 and GlobalScript.tempo_volta > 3:
		$Partida.stop()
		$Velocidade250a500.stop()
		$Velocidade0a250.play()
		$velocidade500.stop()
		$Semacelerar.stop()
		$Freio.stop()
	if Input.is_action_just_pressed("pcima") and GlobalScript.velocidade > 350 and GlobalScript.velocidade < 600 and GlobalScript.tempo_volta > 3:
		$Partida.stop()
		$Velocidade0a250.stop()
		$Velocidade250a500.play()
		$velocidade500.stop()
		$Semacelerar.stop()
		$Freio.stop()
	if Input.is_action_just_pressed("pcima") and GlobalScript.velocidade > 600 and GlobalScript.tempo_volta > 3:
		$Partida.stop()
		$Velocidade0a250.stop()
		$Velocidade250a500.stop()
		$velocidade500.play()
		$Semacelerar.stop()
		$Freio.stop()
	if Input.is_action_just_released("pcima"):
		$Partida.stop()
		$Velocidade0a250.stop()
		$Velocidade250a500.stop()
		$velocidade500.stop()
		$Freio.stop()
		$Semacelerar.play()
	if Input.is_action_just_pressed("pbaixo") and GlobalScript.velocidade > 0:
		$Partida.stop()
		$Velocidade0a250.stop()
		$Velocidade250a500.stop()
		$velocidade500.stop()
		$Freio.play()
		$Semacelerar.stop()
	if Input.is_action_just_released("pbaixo") and GlobalScript.velocidade > 0:
		$Partida.stop()
		$Velocidade0a250.stop()
		$Velocidade250a500.stop()
		$velocidade500.stop()
		$Freio.stop()
		$Semacelerar.play()
	
	#if GlobalScript.tempo_volta > 3:
		#$Semacelerar.play()
	
func _physics_process(delta):
	le_entrada()
	rotation += rotacao_dir * rotation_speed * delta
	movimento = move_and_slide(movimento)
	
func _ready():

	
	
	$Carro1.visible = false
	$Carro2.visible = false
	$Carro3.visible = false
	$Carro4.visible = false
	$Carro5.visible = false
	$Carro6.visible = false
	$Carro7.visible = false
	$Carro8.visible = false
	$Carro9.visible = false
	$Carro10.visible = false
	$Carro11.visible = false
	$Carro12.visible = false
	$Carro13.visible = false
	$Carro14.visible = false
	$Carro15.visible = false
	$Carro16.visible = false
	$Carro17.visible = false
	$Carro18.visible = false
		
	if (GlobalScript.carro == 1):
		$Carro1.visible = true
	elif (GlobalScript.carro == 2):
		$Carro2.visible = true
	elif (GlobalScript.carro == 3):
		$Carro3.visible = true
	elif (GlobalScript.carro == 4):
		$Carro4.visible = true
	elif (GlobalScript.carro == 5):
		$Carro5.visible = true
	elif (GlobalScript.carro == 6):
		$Carro6.visible = true
	elif (GlobalScript.carro == 7):
		$Carro7.visible = true
	elif (GlobalScript.carro == 8):
		$Carro8.visible = true
	elif (GlobalScript.carro == 9):
		$Carro9.visible = true
	elif (GlobalScript.carro == 10):
		$Carro10.visible = true
	elif (GlobalScript.carro == 11):
		$Carro11.visible = true
	elif (GlobalScript.carro == 12):
		$Carro12.visible = true
	elif (GlobalScript.carro == 13):
		$Carro13.visible = true
	elif (GlobalScript.carro == 14):
		$Carro14.visible = true
	elif (GlobalScript.carro == 15):
		$Carro15.visible = true
	elif (GlobalScript.carro == 16):
		$Carro16.visible = true
	elif (GlobalScript.carro == 17):
		$Carro17.visible = true
	elif (GlobalScript.carro == 18):
		$Carro18.visible = true


