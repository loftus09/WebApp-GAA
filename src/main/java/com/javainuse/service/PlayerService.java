package com.javainuse.service;

import java.util.List;

import com.javainuse.model.Employee;
import com.javainuse.model.Player;

public interface PlayerService {
	void insertPlayer(Player emp);
	void insertPlayers(List<Player> players);
	void deletePlayer(Player player);
	List<Player> getAllPlayers();
	Player getPlayerById(int playerid);
}