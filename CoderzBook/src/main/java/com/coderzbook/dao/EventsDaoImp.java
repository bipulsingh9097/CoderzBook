package com.coderzbook.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coderzbook.entity.Event;

@Repository
public class EventsDaoImp implements EventsDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addEvent(Event event) {
	sessionFactory.getCurrentSession().save(event);
	}

	@SuppressWarnings("unchecked")
	
	public List<Event> getAllEvent() {
		return sessionFactory.getCurrentSession().createQuery("from Event").list();
	}

	
	public Event getEvent(int id) {
		return (Event) sessionFactory.getCurrentSession().get(Event.class, id);
	}
	
	
	public void deleteEvent(int id) {
		Event event=(Event) sessionFactory.getCurrentSession().load(Event.class, id);
		if(event!=null) {
			this.sessionFactory.getCurrentSession().delete(event);
			}
		}
	
	
	public Event updateEvent(Event event) {
      sessionFactory.getCurrentSession().update(event);
      return event;
		
	}


}

