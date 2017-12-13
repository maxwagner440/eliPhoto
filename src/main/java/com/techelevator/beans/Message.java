package com.techelevator.beans;

import java.time.LocalDate;


public class Message {

	
	private String name;
	private LocalDate date;
	private String email;
	private String number;
	private String message;
	
	public String getTrueDate() {
		return date.getMonthValue() + "-" + date.getDayOfMonth() + "-" + date.getYear();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	
	
}
