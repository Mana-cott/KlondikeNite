extends Node2D

@onready var root_node = $Root
@onready var player_scene = preload("res://scenes/player.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	match Global.player_count:
		1:
			var new_player = player_scene.instantiate()
			root_node.add_child(new_player)
		2:
			add_mutliple_players([[HBoxContainer.new()], root_node], 2, 0)
		3:
			add_mutliple_players([[HBoxContainer.new(), HBoxContainer.new()], VBoxContainer.new(), root_node], 2, 1)
		4:
			add_mutliple_players([[HBoxContainer.new(), HBoxContainer.new()], VBoxContainer.new(), root_node], 2, 2)
		5:
			add_mutliple_players([[HBoxContainer.new(), HBoxContainer.new()], VBoxContainer.new(), root_node], 3, 2)
		6:
			add_mutliple_players([[HBoxContainer.new(), HBoxContainer.new()], VBoxContainer.new(), root_node], 3, 3)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func add_mutliple_players(root_elements, top_repeat_amount, bottom_repeat_amount):
	for i in top_repeat_amount:
		root_elements[0][0].add_child(add_repeat_player())
	if bottom_repeat_amount > 0:
		for j in bottom_repeat_amount:
			root_elements[0][1].add_child(add_repeat_player())
		root_elements[1].add_child(root_elements[0][0])
		root_elements[1].add_child(root_elements[0][1])
		root_elements[2].add_child(root_elements[1])
	else:
		root_elements[1].add_child(root_elements[0][0])
		

func add_repeat_player():
	var new_player = player_scene.instantiate()
	var new_sub_viewport = SubViewport.new()
	new_sub_viewport.add_child(new_player)
	var new_sub_viewport_container = SubViewportContainer.new()
	new_sub_viewport_container.add_child(new_sub_viewport)
	return new_sub_viewport_container
