extends Sprite2D

@export var enemy_scene: PackedScene
var enemies_spawned = 0

func spawn_enemy():
	enemies_spawned += 1
	var enemy_instance = enemy_scene.instantiate()
	enemy_instance.name = "Enemy" + str(enemies_spawned)
	add_child(enemy_instance)
