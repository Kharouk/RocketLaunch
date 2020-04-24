extends Node

# var animationPlayer = null
# func _ready();
	# animationPlayer = get_node("AnimationPlayer")
	
# or better yet:

onready var animationPlayer : AnimationPlayer = $AnimationPlayer

func _ready():
	animationPlayer.play("Launch")

