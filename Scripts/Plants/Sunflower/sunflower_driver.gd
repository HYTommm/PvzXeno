extends PlantDriver

# var operating_speed = 1 #运行速度
# var attack_timer = 1.4 #攻击速度
# var attack_damage = 25 #攻击伤害
# var bullet_type = BulletManager.bullet_pea
# var bullet_position = Vector2.ZERO #子弹创建偏移
# var bullet_velocity = Vector2(0,0) #子弹初始动量（豌豆射手发射子弹的时候其实还会给动量）
# var bullet_operating_speed = 1 #子弹运行速度
# var bullet_durable = 1 #子弹可穿透次数
# var face_foward = true #面朝前方（布尔值）
# var health = 300#最大生命值
# var take_damage_rate = 1 #受伤倍率
func _ready():
	super._ready()
	change_direction()

# @override
func 攻击回调():
	change_direction()
	
func change_direction():
	# 假设原向量是 bullet_velocity（例如 (100, 0)）
	var original_length = bullet_velocity.length()  # 获取原向量的长度（模长）

	# 生成一个随机方向的单位向量
	var random_angle = randf_range(-PI/4, -PI*3/4)  # 随机角度（弧度）
	var random_direction = Vector2(cos(random_angle), sin(random_angle))  # 单位向量
	# 生成与原向量长度相同、方向随机的新向量
	var test = random_direction * original_length
	bullet_velocity = test
