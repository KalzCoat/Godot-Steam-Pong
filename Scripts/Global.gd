extends Node

var IS_HOST: bool = false

# Steam variables
var IS_OWNED: bool = false
var IS_ONLINE: bool = false
var STEAM_ID: int = 0
var STEAM_USERNAME: String = ""

# Lobby variables
var LOBBY_ID: int = 0
var OPPONENT_ID: int = 0
var OPPONENT_USERNAME: String = ""

# Game const
const MAX_PLAYER: int = 2

func _process(delta):
	Steam.run_callbacks()

func _ready():
	var INIT: Dictionary = Steam.steamInit()
	
	if (INIT['status'] != 1) : get_tree().quit()
	
	IS_ONLINE = Steam.loggedOn()
	STEAM_ID = Steam.getSteamID()
	STEAM_USERNAME = Steam.getPersonaName()
	IS_OWNED = Steam.isSubscribed()
	
	if (IS_OWNED == false) : get_tree().quit()
