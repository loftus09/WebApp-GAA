package com.javainuse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javainuse.dao.EmployeeDao;
import com.javainuse.dao.PlayerDao;
import com.javainuse.model.Employee;
import com.javainuse.model.Player;
import com.javainuse.service.EmployeeService;
import com.javainuse.service.PlayerService;

@Service
public class PlayerServiceImpl implements PlayerService {

	@Autowired
	PlayerDao playerDao;

	@Override
	public void insertPlayer(Employee emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertPlayers(List<Player> players) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Player> getAllPlayers() {
		// TODO Auto-generated method stub
		return playerDao.getAllPlayers();
	}

	@Override
	public void getPlayerById(int playerid) {
		// TODO Auto-generated method stub
		
	}



}