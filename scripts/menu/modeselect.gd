extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_player_pressed():
	pass # Replace with function body.


func _on_one_player_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_two_player_pressed():
	Global.player_count = 2
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_three_player_pressed():
	Global.player_count = 3
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_four_player_pressed():
	Global.player_count = 4
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_five_player_pressed():
	Global.player_count = 5
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_six_player_pressed():
	Global.player_count = 6
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scenes/menus/menu.tscn")
