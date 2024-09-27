extends MeshInstance3D

@export var speed: float = -1
@export var rot_speed = 1.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position.z += speed * delta
	
	#rotate_y(deg_to_rad(rot_speed) * delta)
	#rotate_x(deg_to_rad(rot_speed) * delta)
	#rotate_z(deg_to_rad(rot_speed) * delta)
	
	#global_position.z += speed * delta
	
	var f = Input.get_axis("move_back","move_forward")
	var r = Input.get_axis("move_left", "move_right")
	
	translate(Vector3(0,0,f * delta * speed))
	rotate_y(r * rot_speed * delta)
	
	pass
