package com.techelevator.beans;

import java.time.LocalDate;

public class Picture {

	private Long pictureId;
	private String fileName;
	private String title;
	private String location;
	private LocalDate date;
	private String catergory;
	
	
	public String getTrueDate() {
		return date.getMonthValue() + "-" + date.getDayOfMonth() + "-" + date.getYear();
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public String getCatergory() {
		return catergory;
	}
	public void setCatergory(String catergory) {
		this.catergory = catergory;
	}

	public Long getPictureId() {
		return pictureId;
	}

	public void setPictureId(Long pictureId) {
		this.pictureId = pictureId;
	}





}
