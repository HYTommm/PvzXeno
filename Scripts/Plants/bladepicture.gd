extends Control
var children_array:Array
func _ready() -> void:
	children_array= $blade.get_children()
func set_texture(blades: Array[PlantBlade]):
	for i in blades.size():
		children_array[i].texture=PlantManager.get_plant_image(blades[i].addonsNames)
		
