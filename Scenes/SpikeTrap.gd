extends Area2D

func _ready():
	$AnimationPlayer.play("Spiketrigger")

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		print("Player dead")
