extends KinematicBody2D

const SPEED_INCREASE = 5

var speed = 300
var velocity = Vector2(0, 0)

func _ready():
	if (!Global.IS_HOST) : return
	randomize()
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.8, 0.8][randi() % 2]
	global_position = Vector2(416, [188, 288, 388][randi() % 3])

func _process(delta):
	if (!Global.IS_HOST) : return
	var collision = move_and_collide(velocity * speed * delta)
	if collision:
		velocity = velocity.bounce(collision.normal)
		speed += SPEED_INCREASE
	send_P2P_Packet(Global.OPPONENT_ID, {"message":null, "posPlayer":null, "posBall":global_position})

func send_P2P_Packet(target: int, packet_data: Dictionary) -> void:
	var DATA: PoolByteArray
	DATA.append(256)
	DATA.append_array(var2bytes(packet_data))
	Steam.sendP2PPacket(target, DATA, 0, 0) # Unreliable
