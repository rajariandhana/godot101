extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	# wtf does pass do?
	# pass # Replace with function body.
	#print("Im a coin")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("+1 coin!")
	queue_free()
