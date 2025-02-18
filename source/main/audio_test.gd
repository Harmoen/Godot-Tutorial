extends Node2D
# Press F1 to bring up the Godot Help Menu 
# Search the node you want to learn more about (AudioStreamPlayer for example)
# Click on it and it will tell you all about it and what all of it's functions do
# On the top it will say "Inherits from". The node can do all the same things that those can do. It is like the descendant of those things.


#The AudioListener2D is the location of the players ears, and is used for directional audio. 
#You can delete it if you want.
#I attached a sprite to it so you don't forget where it is.


#Click on a node in the panel on the left, and then hold ctrl and drag it over here to get this: 
#Or you can type it manually
#I would advise you rename your nodes on the left panel, but you'll have to edit the reference below to be the new name. Just change the green part
@onready var button: Button = $Button
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"SkellyDeath_AudioStreamPlayer2D"



#This function runs automatically when the scene loads. It is built into Godot
func _ready() -> void:
	#You will use signals to connect the buttons to the code you want to run
	# You can connect the same signal to multiple functions
	# Buttons have a built in signal that fires when pressed, so we are using that here
	# Button_name.pressed.connect(name_of_function_to_connect_to)
	button.pressed.connect(SkeletonDeath)




func SkeletonDeath():
	audio_stream_player_2d.play()
	print("hello world!")
