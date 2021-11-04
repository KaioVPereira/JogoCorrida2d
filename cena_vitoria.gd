extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MusicaVitoria.play()
	$AnimationPlayer.play("Trofeu")
	pass # Replace with function body.
	
	atualizar_pontos()
#	pass

func atualizar_pontos():
	var url = GlobalScript.url_atualizar
	var dados_envio = "id=" + str(GlobalScript.id_usuario) + "&tempo_volta=" + str(round(GlobalScript.tempo_volta)) + "&dificuldade=" + GlobalScript.nivel_dificuldade + "&nome=" + GlobalScript.usuario + "&pista=" + str(GlobalScript.pista) 
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url,cabecalho,false,HTTPClient.METHOD_POST,dados_envio)


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	if (json.result["msg"]=="ok"):
		$rank.text = "Inserido resultado no ranking"
	else:
		$rank.text = "Erro ao inserir no ranking"
		
		



		
func chama_resultado():
	get_tree().change_scene("res://cenaresultadovitoria.tscn")
	pass # Replace with function body.


func voltar_para_menu():
	GlobalScript.voltas = 0
	GlobalScript.tempo_jogo = 0
	
	get_tree().change_scene("res://cenamenu.tscn")
	pass # Replace with function body.
	
	
	
