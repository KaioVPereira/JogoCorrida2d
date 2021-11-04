extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	#enviarloginenter()
	pass # Replace with function body.

	$AudioStreamPlayer.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		enviarlogin()


func enviarlogin():
	var url_requisicao = GlobalScript.url_login
	var dados_envio = "email="+$Email.text+ "&senha="+$Senha.text
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)
	pass



func requisicao_completa(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	if (json.result.size()>1):
		GlobalScript.id_usuario = json.result["id"]
		GlobalScript.usuario = json.result["usuario"]
		GlobalScript.melhor_tempo =  json.result["melhor_pontuacao"]
		get_tree().change_scene("res://cenainicio.tscn")
	else:
		$Popup/AcceptDialog.popup_centered(Vector2(300,50))
	pass # Replace with function body.
