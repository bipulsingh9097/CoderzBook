package com.coderzbook.dao;

import java.util.List;

import com.coderzbook.entity.Event;

public interface EventsDao {

	public void addEvent(Event event);
	
	public List<Event> getAllEvent();
	
	public Event getEvent(int id);
	
	public void deleteEvent(int id);
	
	public Event updateEvent(Event event);
	
	
}
