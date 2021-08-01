extends Node2D

const SCORE_TO_WIN = 3

var playerScene = preload("res://Scenes/Player.tscn")
var player1
var player2

var ballScene = preload("res://Scenes/Ball.tscn")
var ball

var scoreP1 = 0
var scoreP2 = 0

var PACKET

onready var score = $UI/Score
onready var player1Name = $UI/Player1
onready var player2Name = $UI/Player2
onready var separator = $UI/Separator
onready var gameover = $UI/GameOver

func _ready():
	if (Global.IS_HOST):
		player1Name.text = Global.STEAM_USERNAME
		player2Name.text = Global.OPPONENT_USERNAME
	else:
		player1Name.text = Global.OPPONENT_USERNAME
		player2Name.text = Global.STEAM_USERNAME
	
	player1 = playerScene.instance()
	player1.global_position = Vector2(16, 288)
	
	player2 = playerScene.instance()
	player2.global_position = Vector2(816, 288)
	
	if (Global.IS_HOST) : player1.mine = true
	else:
		player2.mine = true
		instanceBall()
		send_P2P_Packet(Global.OPPONENT_ID, {"message":"ready", "posPlayer":null, "posBall":null})
	
	add_child(player1)
	add_child(player2)

func _process(delta):
	PACKET = Steam.getAvailableP2PPacketSize(0)
	for pack in PACKET:
		read_P2P_Packet()

func _on_GoalLeft_body_entered(body):
	scoreP2 += 1
	goal()

func _on_GoalRight_body_entered(body):
	scoreP1 += 1
	goal()

func goal():
	updateScore()
	if (scoreP1 == SCORE_TO_WIN):
		gameOver(player1Name.text)
	elif (scoreP2 == SCORE_TO_WIN):
		gameOver(player2Name.text)
	else:
		resetBall()

func updateScore():
	score.text = str(scoreP1) + " | " + str(scoreP2)

func resetBall():
	ball.speed = 300
	ball._ready()

func gameOver(player):
	separator.visible = false
	
	gameover.text = player + " WIN !"
	gameover.visible = true
	
	closeP2PSession()

func closeP2PSession():
	yield(get_tree().create_timer(3.0), "timeout")
	Steam.leaveLobby(Global.LOBBY_ID)
	Global.LOBBY_ID = 0
	Steam.closeP2PSessionWithUser(Global.OPPONENT_ID)
	Global.OPPONENT_ID = 0
	Global.OPPONENT_USERNAME = ""
	Global.IS_HOST = false
	#DESTROY LOBBY
	get_tree().change_scene("res://Scenes/Menu.tscn")

func instanceBall():
	ball = ballScene.instance()
	add_child(ball)

#-------------------------------------------#

func read_P2P_Packet() -> void:
	var PACKET_SIZE: int = Steam.getAvailableP2PPacketSize(0)
	if PACKET_SIZE > 0:
		var PACKET: Dictionary = Steam.readP2PPacket(PACKET_SIZE, 0)
		var READABLE: Dictionary = bytes2var(PACKET.data.subarray(1, PACKET_SIZE - 1))
		
		if (READABLE["message"] == "ready"):
			if (Global.IS_HOST) : instanceBall()
		if (READABLE["posPlayer"] != null):
			if (Global.IS_HOST) : player2.global_position = READABLE["posPlayer"]
			else : player1.global_position = READABLE["posPlayer"]
		if (READABLE["posBall"] != null):
			if (!Global.IS_HOST) : ball.global_position = READABLE["posBall"]

func send_P2P_Packet(target: int, packet_data: Dictionary) -> void:
	var DATA: PoolByteArray
	DATA.append(256)
	DATA.append_array(var2bytes(packet_data))
	Steam.sendP2PPacket(target, DATA, 2, 0) # Reliable
