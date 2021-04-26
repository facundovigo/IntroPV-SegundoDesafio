extends Sprite

onready var arm = $Arm

export (float) var speed: float

func initialize(projectile_container):
	arm.container = projectile_container
	
func _physics_process(delta):
	var mouse_position:Vector2 = get_local_mouse_position()
	arm.rotation = mouse_position.normalized().angle()
	#var new_projectile = projectile_scene.instance()
	if Input.is_action_just_pressed("fire"):
	 arm.fire()
	var direction:int =  int(Input.is_action_pressed("derecha")) - int(Input.is_action_pressed("izquierda"))
	position.x += direction * speed * delta


