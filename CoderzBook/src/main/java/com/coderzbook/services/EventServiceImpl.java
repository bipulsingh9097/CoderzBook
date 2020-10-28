package com.coderzbook.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderzbook.dao.EventsDao;
import com.coderzbook.entity.Event;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventsDao eventsDao;
	
	
	@Transactional
	public void addEvent(Event event) {
	  eventsDao.addEvent(event);	
	}

	@Transactional
	public List<Event> getAllEvent() {
		return eventsDao.getAllEvent();
	}

	@Transactional
	public Event getEvent(int id) {
	return eventsDao.getEvent(id);
	}

	
	@Transactional
	public void deleteEvent(int id) {
		eventsDao.deleteEvent(id);
	}

	
	@Transactional
	public Event updateEvent(Event event) {
		return eventsDao.updateEvent(event);
		
	}
	

}
