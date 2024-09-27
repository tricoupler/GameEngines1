extends MeshInstance3D

var red = Color(255,0,0)
var blue = Color(0,0,255)
var green = Color(0,255,0)

var rng = RandomNumberGenerator.new()
var t = 0.0
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Timer.new()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mat = get_active_material(0)	
	var num = rng.randi_range(0,2)
	
	t += delta
	if t >= 0.20:
		t -= 0.20
		if num == 0:
			mat.albedo_color = red

		if num == 1:
			mat.albedo_color = green
			
		if num == 2:
			mat.albedo_color = blue

	pass
