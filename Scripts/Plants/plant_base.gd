extends CanvasGroup
class_name PlantBase
@export var anim : AnimationPlayer
@export var driver : PlantDriver
##棋盘行数（初始值为 1）
var board_row = 1
##棋盘列数（初始值为 1）
var board_col = 1

##当前刀片数量（初始值为 0）
#var current_blade_amount = 0

func _ready():
	anim.speed_scale = driver.operating_speed
	if driver.face_foward == false:
		scale.x = -abs(scale.x)
func install_blade_plugin():
	var 序号=0
	for blade in %PlantDriver.blades:
		if blade.addonsNames=="blankPlant":
			pass
