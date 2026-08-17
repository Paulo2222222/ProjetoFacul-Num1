extends RigidBody2D

func _ready() -> void:
	var tipo_carros = $animacao.sprite_frames.get_animation_names()
	var carro = tipo_carros[randi_range(0,tipo_carros.size() - 1)]
	$animacao.animation = carro 


func _on_notificador_screen_exited() -> void:
	queue_free()
