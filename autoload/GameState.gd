extends Node

var players: Array[Node3D] = []

func register_player(player: Node3D) -> void:
	if not players.has(player):
		players.append(player)

func unregister_player(player: Node3D) -> void:
	players.erase(player)

func all_players_caught() -> bool:
	for p in players:
		if not p.is_caught:
			return false
	return not players.is_empty()