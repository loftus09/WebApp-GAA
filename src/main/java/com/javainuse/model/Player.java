package com.javainuse.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column
	private String playerName;
	
	@Column
	private int age;
	
	@Column
	private String phoneNumber;

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Long getPlayerId() {
		return id;
	}


	public String getPlayerName() {
		return playerName;
	}

	public void setplayerName(String playerName) {
		this.playerName = playerName;
	}

	@Override
	public String toString() {
		return "Player [playerId=" + id + ", playerName=" + playerName + "]";
	}

}