extends Node

var tempo_jogo = 60
var qtd_vidas = 6
var nivel_dificuldade = "Fácil"
var carro = 0
var voltas = 0
var tempo_volta = 0
var pista = 0
export (int) var velocidade = 0


var site = "http://trackday.freevar.com"
var url_login     = site + "/bd/dao/jogo_autenticar.php?"
var url_atualizar = site + "/bd/dao/jogo_atualizar.php?"
var url_ranking_facil_pista1   = site + "/bd/dao/jogo_ranking_facil_pista1.php?"
var url_ranking_medio_pista1  = site + "/bd/dao/jogo_ranking_medio_pista1.php?"
var url_ranking_dificil_pista1  = site + "/bd/dao/jogo_ranking_dificil_pista1.php?"
var url_ranking_facil_pista2   = site + "/bd/dao/jogo_ranking_facil_pista2.php?"
var url_ranking_medio_pista2  = site + "/bd/dao/jogo_ranking_medio_pista2.php?"
var url_ranking_dificil_pista2  = site + "/bd/dao/jogo_ranking_dificil_pista2.php?"

var id_usuario = "0"
var usuario = ""
var melhor_tempo = 0


func redefinir_config():
	tempo_jogo = 0
	qtd_vidas = 6
	velocidade = 0
	voltas = 0
	tempo_volta = 0


