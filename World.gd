extends Node

# var animationPlayer = null
# func _ready();
	# animationPlayer = get_node("AnimationPlayer")

# or better yet:

onready var animationPlayer : AnimationPlayer = $AnimationPlayer
onready var titleSprite := $Title
onready var smallSteps := $SmallStepsSound

func _ready():
	pass



func _on_LaunchButton_pressed():
	titleSprite.hide()
	animationPlayer.play("Launch")
	smallSteps.play()
