extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	pass # Replace with function body.

func atualizar_ranking_facil_pista1():
	var url_requisicao = GlobalScript.url_ranking_facil_pista1
	var dados_envio = "";
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio) # requisicao para POST

func atualizar_ranking_medio_pista1():
	var url_requisicao = GlobalScript.url_ranking_medio_pista1
	var dados_envio = "";
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)
	
func atualizar_ranking_dificil_pista1():
	var url_requisicao = GlobalScript.url_ranking_dificil_pista1
	var dados_envio = "";
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)

func atualizar_ranking_facil_pista2():
	var url_requisicao = GlobalScript.url_ranking_facil_pista2
	var dados_envio = "";
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio) # requisicao para POST

func atualizar_ranking_medio_pista2():
	var url_requisicao = GlobalScript.url_ranking_medio_pista2
	var dados_envio = "";
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)
	
func atualizar_ranking_dificil_pista2():
	var url_requisicao = GlobalScript.url_ranking_dificil_pista2
	var dados_envio = "";
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"] #para POST usamos application/json
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)
	
	



func voltar_menu():
	$SelecionarMenu.play()
	get_tree().change_scene("res://cenamenu.tscn")
	pass # Replace with function body.


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	
	for i in range(json.result.size()):
		var posicao = i+1
		var id_usuario = str(json.result[i]["id"])
		var tempo  = str(json.result[i]["tempo_volta"])
		var usuario = str(json.result[i]["usuario"])
		var pista  = str(json.result[i]["pista"])
		
		$ItemList.add_item(str("%03s" % posicao) + str("%25s" % tempo) + str("%25s" % usuario) + str("%18s" % pista))
		if (GlobalScript.id_usuario != id_usuario):
			$ItemList.set_item_custom_fg_color(i, Color( 1, 1, 1, 1 ))
		else:
			$ItemList.set_item_custom_fg_color(i, Color( 1, 0, 0, 1 ))
	pass # Replace with function body.


func rank_facil():
	$SelecionarMenu.play()
	$TituloDifuculdade.text = "Ranking Pista 1 Fácil" 
	$ItemList.clear()
	atualizar_ranking_facil_pista1()
	
	pass # Replace with function body.
	

func rank_medio():
	$SelecionarMenu.play()
	$TituloDifuculdade.text = "Ranking Pista 1 Médio" 
	$ItemList.clear()
	atualizar_ranking_medio_pista1()
	pass # Replace with function body.


func rank_dificil():
	$SelecionarMenu.play()
	$TituloDifuculdade.text = "Ranking Pista 1 Difícil" 
	$ItemList.clear()
	atualizar_ranking_dificil_pista1()
	pass # Replace with function body.


func Faciopista2():
	$SelecionarMenu.play()
	$TituloDifuculdade.text = "Ranking Pista 2 Fácil" 
	$ItemList.clear()
	atualizar_ranking_facil_pista2()
	pass # Replace with function body.


func MedioPista2():
	$SelecionarMenu.play()
	$TituloDifuculdade.text = "Ranking Pista 2 Médio" 
	$ItemList.clear()
	atualizar_ranking_medio_pista2()
	pass # Replace with function body.


func DificilPista2():
	$SelecionarMenu.play()
	$TituloDifuculdade.text = "Ranking Pista 2 Difícil" 
	$ItemList.clear()
	atualizar_ranking_dificil_pista2()
	pass # Replace with function body.


func Pista1Facil():
	$MouseEntrabotao.play()
	pass # Replace with function body.

func pista2facil():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func pista1medio():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func pista2medio():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func pista1dificil():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func pista2dificil():
	$MouseEntrabotao.play()
	pass # Replace with function body.


func VOLTARMENUMOUSENTRA():
	$MouseEntrabotao.play()
	pass # Replace with function body.
