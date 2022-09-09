extends Node2D
export (int) var follow_speed = 50
func _ready():
	$AnimationPlayer.play("spin")

func _process(delta):
	$Path2D/PathFollow2D.offset += 50 * delta

 


func _on_DeathZone_area_entered(area):
	if area.is_in_group("Deadly"):
		if GameStats.check_reset() == false:
			global_position = GameStats.get_spawn().global_position
