

func _on_Area2D_area_shape_entered(body):
	if body.is_in_group("Player"):
		$AnimationPlayer.play("Coinget")
