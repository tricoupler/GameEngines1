extends CharacterBody3D

@export var speed: float = 10
@export var rot_speed = 180.0

@export var bullet_scene: PackedScene
@export var bullet_target: Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#position.z += speed * delta
	
	#rotate_y(deg_to_rad(rot_speed) * delta)
	#rotate_x(deg_to_rad(rot_speed) * delta)
	#rotate_z(deg_to_rad(rot_speed) * delta)
	
	#global_position.z += speed * delta
	
	var f = Input.get_axis("move_forward","move_back")
	var r = Input.get_axis("move_right", "move_left")
	
	var v = Vector3()
	
	v = global_transform.basis.z
	
	print(v)
	
	velocity = v * speed * f
	
	move_and_slide()
	#translate(Vector3(0,0,f * delta * speed))
	rotate_y(deg_to_rad(rot_speed) * r * delta)
	
	DebugDraw2D.set_text("position", position)
	DebugDraw2D.set_text("global_position", global_position)
	DebugDraw2D.set_text("basis.x", transform.basis.x)
	DebugDraw2D.set_text("basis.y", transform.basis.y)
	DebugDraw2D.set_text("basis.z", transform.basis.z)
	
	DebugDraw2D.set_text("glo basis.x", global_transform.basis.x)
	DebugDraw2D.set_text("glo basis.y", global_transform.basis.y)
	DebugDraw2D.set_text("glo basis.z", global_transform.basis.z)

	if Input.is_action_just_pressed("Shoot"):
		var bullet = bullet_scene.instantiate()
		
		get_parent().add_child(bullet)

		bullet.global_position = bullet_target.global_position
		bullet.global_rotation = global_rotation
		
		
	pass
