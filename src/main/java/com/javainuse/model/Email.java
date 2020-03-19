package com.javainuse.model;


public class Email {
	

	private String fromAddress;
	
	private String subject;

	private String message;

	

	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getFromAddress() {
		return fromAddress;
	}



	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}



	public String getMessage() {
		return message;
	}



	public void setMessage(String message) {
		this.message = message;
	}



}