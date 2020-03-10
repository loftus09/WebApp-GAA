package com.javainuse.dao;

import java.util.List;

import com.javainuse.model.Employee;
import com.javainuse.model.Player;

public interface PlayerDao {
	void insertPlayer(Employee emp);
	void insertPlayers(List<Player> players);
	List<Player> getAllPlayers();
	void getPlayerById(int playerid);
}