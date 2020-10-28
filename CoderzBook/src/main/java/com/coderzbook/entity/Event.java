package com.coderzbook.entity;

import java.sql.Timestamp;
import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="event")
public class Event {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id")
	private int id;
    
	@Column(name = "title")
	private String title;
	
	@Column(name = "description")
	private String description;

	@Column(name = "image")
	private byte[] image;
	
	@Column()
	private String date;
	
	@Transient
	private String imageDisplay;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	
	public String getImageDisplay() {
		return imageDisplay;
	}

	public void setImageDisplay(String imageDisplay) {
		this.imageDisplay = imageDisplay;
	}

	@Override
	public String toString() {
		return "Event [id=" + id + ", title=" + title + ", description=" + description + ", image="
				+ Arrays.toString(image) + ", date=" + date + "]";
	}


	

}
