extends Node

# var animationPlayer = null
# func _ready();
	# animationPlayer = get_node("AnimationPlayer")

# or better yet:

onready var animationPlayer : AnimationPlayer = $AnimationPlayer
onready var titleSprite := $Title
onready var smallSteps := $SmallStepsSound
onready var stars = [$Stars, $Stars2, $Stars3, $Stars4]
onready var button := $LaunchButton

func _ready():
	for star in stars:
		star.hide()
	pass



func _on_LaunchButton_pressed():
	titleSprite.hide()
	animationPlayer.play("Launch")
	button.hide()
	smallSteps.play()
	for star in stars:
		star.show()
