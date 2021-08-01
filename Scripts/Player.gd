extends KinematicBody2D

const SPEED = 200

var mine: bool = false
var velocity = Vector2(0, 0)

func _process(delta):
	if (mine):
		velocity = Vector2(0, int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))).normalized()
		move_and_slide(velocity * SPEED)
		send_P2P_Packet(Global.OPPONENT_ID, {"message":null, "posPlayer":global_position, "posBall":null})
	else:
		move_and_slide(velocity * SPEED)

func send_P2P_Packet(target: int, packet_data: Dictionary) -> void:
	var DATA: PoolByteArray
	DATA.append(256)
	DATA.append_array(var2bytes(packet_data))
	Steam.sendP2PPacket(target, DATA, 0, 0) # Unreliable
