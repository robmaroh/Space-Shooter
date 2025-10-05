extends CanvasLayer

static var image = load("res://graphics/lives/life.png")
var time_elapsed := 0

func set_health(amount):
	# Remove all children from HBox container
	for child in $"LifeMargin/LifeHBox".get_children():
		child.queue_free()
	
	# Create new children, amount set by health
	for i in amount:
		var text_rect = TextureRect.new()
		text_rect.texture = image
		$"LifeMargin/LifeHBox".add_child(text_rect)
		text_rect.stretch_mode = TextureRect.STRETCH_KEEP


func _on_score_timer_timeout() -> void:
	time_elapsed += 1
	$ScoreMargin/Score.text = str(time_elapsed)
	Global.score = time_elapsed
