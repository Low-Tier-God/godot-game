extends Area2D

func _ready():
	$AnimationPlayer.play("Spiketrigger")

func _on_DeathZone_area_entered(area):
	if area.is_in_group("Deadly"):
		if GameStats.check_reset() == false:
			global_position = GameStats.get_spawn().global_position
