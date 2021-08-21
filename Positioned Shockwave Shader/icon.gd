extends Sprite

onready var CameraNode = get_parent().get_node("Camera2D")
onready var Shockwave = CameraNode.get_node("CanvasLayer/Shockwave")

export var speed = 10.0

func _ready():
	pass
	
func _process(delta):
	position.x -= speed * delta
	if Input.is_action_just_pressed("ui_accept"):
		Shockwave.material.set_shader_param("global_position", get_global_position() - CameraNode.get_global_position())
		Shockwave.get_node("AnimationPlayer").play("Shockwave")
