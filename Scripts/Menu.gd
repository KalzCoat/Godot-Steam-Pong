extends Control

var lobbyButtonScene = preload("res://Scenes/JoinLobbyButton.tscn")

# MAIN MENU  #
onready var main = $Main

# LOBBY MENU #
onready var lobby = $Lobby
onready var lobbyTitle = $Lobby/LobbyTitle
onready var player1Name = $Lobby/Player1
onready var player2Name = $Lobby/Player2
onready var start = $Lobby/StartGame

# LOBBY LIST MENU #
onready var lobbyList = $LobbyList
onready var lobbyListContainer = $LobbyList/Scroll/VBox

var PACKET

#-----------------------------------------------------------------------------#

func _ready():
	Steam.connect("lobby_created", self, "_on_Lobby_Created")
	Steam.connect("lobby_match_list", self, "_on_Lobby_Match_List")
	Steam.connect("lobby_joined", self, "_on_Lobby_Joined")
	Steam.connect("join_requested", self, "_on_Lobby_Join_Requested")
	Steam.connect("lobby_chat_update", self, "_on_Lobby_Chat_Update")
	
	Steam.connect("p2p_session_request", self, "_on_P2P_Session_Request")
	Steam.connect("p2p_session_connect_fail", self, "_on_P2P_Session_Connect_Fail")

func _process(delta):
	if (lobby.visible == true):
		PACKET = Steam.getAvailableP2PPacketSize(0)
		for pack in PACKET:
			read_P2P_Packet()

#-----------------------------------------------------------------------------#

func setMenu(menu):
	match menu:
		"main":
			main.visible = true
			lobby.visible = false
			lobbyList.visible = false
		"lobby":
			main.visible = false
			lobby.visible = true
			lobbyList.visible = false
			if (Global.IS_HOST) : start.visible = true
			else : start.visible = false
		"lobbyList":
			main.visible = false
			lobby.visible = false
			lobbyList.visible = true

#-----------------------------------------------------------------------------#

# BUTTONS CALLBACKS #

# MAIN MENU  #
func _on_CreateLobby_pressed():
	Global.IS_HOST = true
	if (Global.LOBBY_ID == 0) : Steam.createLobby(2, Global.MAX_PLAYER) # Lobby type : Public
	
	setMenu("lobby")

func _on_joinCreateLobby_pressed():
	for button in lobbyListContainer.get_children() : button.queue_free()
	
	Steam.addRequestLobbyListDistanceFilter(3) # Distance to search : Worldwide
	Steam.addRequestLobbyListStringFilter("name", "[GSP]", 2)
	
	Steam.requestLobbyList()
	
	setMenu("lobbyList")

func _on_Quit_pressed():
	get_tree().quit()

# LOBBY MENU #
func _on_LeaveLobby_pressed():
	Steam.leaveLobby(Global.LOBBY_ID)
	Global.LOBBY_ID = 0
	Steam.closeP2PSessionWithUser(Global.OPPONENT_ID)
	Global.OPPONENT_ID = 0
	Global.OPPONENT_USERNAME = ""
	
	setMenu("main")
	Global.IS_HOST = false

func _on_StartGame_pressed():
	if (Global.OPPONENT_ID == 0) : return
	send_P2P_Packet(Global.OPPONENT_ID, {"message":"Start"})
	get_tree().change_scene("res://Scenes/Game.tscn")

# LOBBY LIST MENU #
func _on_Back_pressed():
	setMenu("main")

func _on_Refresh_pressed():
	_on_joinCreateLobby_pressed()

func _on_Join_Lobby_Pressed(lobbyID: int):
	Steam.joinLobby(lobbyID)
	
	setMenu("lobby")

#-----------------------------------------------------------------------------#

# STEAM CALLBACKS #

func _on_Lobby_Created(connect: int, lobbyID: int) -> void:
	if (connect != 1) : return
	
	# Set the lobby ID
	Global.LOBBY_ID = lobbyID

	# Set lobby name
	Steam.setLobbyData(lobbyID, "name", "[GSP] " + str(Global.STEAM_USERNAME) + "'s Lobby")
	lobbyTitle.text = Steam.getLobbyData(lobbyID, "name")

func _on_Lobby_Match_List(lobbies: Array) -> void:
	for lobbyID in lobbies:
		if (Steam.getNumLobbyMembers(lobbyID) == 1):
			var lobbyName: String = str(Steam.getLobbyData(lobbyID, "name"))
			
			# Create a button for the lobby
			var lobbyButton = lobbyButtonScene.instance()
			lobbyButton.set_name("lobby_"+str(lobbyID))
			lobbyButton.set_text(lobbyName)
			lobbyButton.connect("pressed", self, "_on_Join_Lobby_Pressed", [lobbyID])

			# Add the new lobby to the list
			lobbyListContainer.add_child(lobbyButton)

func _on_Lobby_Joined(lobbyID: int, permissions: int, locked: bool, response: int) -> void:
	if (Steam.getNumLobbyMembers(lobbyID) == 1 and !Global.IS_HOST):
		_on_LeaveLobby_pressed()
		return
	
	Global.LOBBY_ID = lobbyID
	lobbyTitle.text = str(Steam.getLobbyData(lobbyID, "name"))
	
	# Get opponent
	if (Global.IS_HOST):
		player1Name.text = "Player 1 : " + Global.STEAM_USERNAME
		player2Name.text = "Player 2 : "
	else:
		Global.OPPONENT_ID = Steam.getLobbyMemberByIndex(Global.LOBBY_ID, 0)
		if (Global.OPPONENT_ID == Global.STEAM_ID) : Global.OPPONENT_ID = Steam.getLobbyMemberByIndex(Global.LOBBY_ID, 1)
		Global.OPPONENT_USERNAME = Steam.getFriendPersonaName(Global.OPPONENT_ID)
		player1Name.text = "Player 1 : " + Global.OPPONENT_USERNAME
		player2Name.text = "Player 2 : " + Global.STEAM_USERNAME

func _on_Lobby_Join_Requested(lobbyID: int, friendID: int) -> void:
	_on_Join_Lobby_Pressed(lobbyID)

func _on_Lobby_Chat_Update(lobbyID: int, changedID: int, makingChangeID: int, chatState: int) -> void:
	if (chatState == 1 and Global.IS_HOST): # a player join the lobby
		Global.OPPONENT_ID = Steam.getLobbyMemberByIndex(Global.LOBBY_ID, 1)
		Global.OPPONENT_USERNAME = Steam.getFriendPersonaName(Global.OPPONENT_ID)
		player2Name.text = "Player 2 : " + Global.OPPONENT_USERNAME
	elif (chatState == 2): # a player leave the lobby
		Global.OPPONENT_ID = 0
		Global.OPPONENT_USERNAME = ""
		player1Name.text = "Player 1 : " + Global.STEAM_USERNAME
		player2Name.text = "Player 2 : "
		Global.IS_HOST = true
		start.visible = true

#-----------------------------------------------------------------------------#

func _on_P2P_Session_Request(remoteID: int) -> void:
	Steam.acceptP2PSessionWithUser(remoteID)

func _on_P2P_Session_Connect_Fail(lobbyID: int, session_error: int) -> void:
	# If no error was given
	if session_error == 0:
		print("WARNING: Session failure with "+str(lobbyID)+" [no error given].")
	# Else if target user was not running the same game
	elif session_error == 1:
		print("WARNING: Session failure with "+str(lobbyID)+" [target user not running the same game].")
	# Else if local user doesn't own app / game
	elif session_error == 2:
		print("WARNING: Session failure with "+str(lobbyID)+" [local user doesn't own app / game].")
	# Else if target user isn't connected to Steam
	elif session_error == 3:
		print("WARNING: Session failure with "+str(lobbyID)+" [target user isn't connected to Steam].")
	# Else if connection timed out
	elif session_error == 4:
		print("WARNING: Session failure with "+str(lobbyID)+" [connection timed out].")
	# Else if unused
	elif session_error == 5:
		print("WARNING: Session failure with "+str(lobbyID)+" [unused].")
	# Else no known error
	else:
		print("WARNING: Session failure with "+str(lobbyID)+" [unknown error "+str(session_error)+"].")

#-----------------------------------------------------------------------------#

# SEND AND READ PACKET

func send_P2P_Packet(target: int, packet_data: Dictionary) -> void:
	var DATA: PoolByteArray
	DATA.append(256)
	DATA.append_array(var2bytes(packet_data))
	Steam.sendP2PPacket(target, DATA, 2, 0) # Reliable

func read_P2P_Packet() -> void:
	var PACKET_SIZE: int = Steam.getAvailableP2PPacketSize(0)
	
	# There is a packet
	if PACKET_SIZE > 0:
		var PACKET: Dictionary = Steam.readP2PPacket(PACKET_SIZE, 0)
		var READABLE: Dictionary = bytes2var(PACKET.data.subarray(1, PACKET_SIZE - 1))
		
		if (READABLE["message"] == "Start"):
			get_tree().change_scene("res://Scenes/Game.tscn")

#-----------------------------------------------------------------------------#
