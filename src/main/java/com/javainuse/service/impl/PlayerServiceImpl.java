package com.javainuse.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javainuse.dao.EmployeeDao;
import com.javainuse.dao.PlayerDao;
import com.javainuse.model.Employee;
import com.javainuse.model.Player;
import com.javainuse.repositories.PlayerRepository;
import com.javainuse.service.EmployeeService;
import com.javainuse.service.PlayerService;

@Service
public class PlayerServiceImpl implements PlayerService {

	@Autowired
	PlayerRepository playerRepository;

	@Override
	public void insertPlayer(Player p) {
		
		playerRepository.save(p);
	}

	@Override
	public void insertPlayers(List<Player> players) {
		
		playerRepository.save(players);
	}

	@Override
	public List<Player> getAllPlayers() {
	
		List<Player> players = new ArrayList<>();
		playerRepository.findAll().forEach(players::add);
		    return players;
	}

	@Override
	public void getPlayerById(int playerid) {
		playerRepository.findOne((long) playerid);
		
	}



}