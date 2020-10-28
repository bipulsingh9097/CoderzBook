package com.coderzbook.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.codec.binary.Base64;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.coderzbook.entity.Event;
import com.coderzbook.patterns.ObjectFactory;
import com.coderzbook.services.EventService;

@Controller
public class EventsController {

	private Logger logger = Logger.getLogger(EventsController.class);

	@Autowired
	private EventService eventService;

	
	@RequestMapping("/addevent")
	public String getEventView(Model model) {
		model.addAttribute("event", new Event());
		return "addevents";
	}
	
	
	// adding events
	@RequestMapping(value = "saveevent", method = RequestMethod.POST)
	public String addEvent(@ModelAttribute("event") Event event,
			@RequestParam("photo") CommonsMultipartFile photo) {
		byte[] b = photo.getBytes();
		event.setImage(b);
		eventService.addEvent(event);
		return "redirect:/eventList";
	}

	// redirect to view page for all event list at dashboard
	@RequestMapping(value = "/eventList")
	public String eventList(Model m) throws UnsupportedEncodingException {
		List<Event> eventList = eventService.getAllEvent();
		for(Event e : eventList) {
		byte[] encodeBase64 = Base64.encodeBase64(e.getImage());
	     String base64Encoded = new String(encodeBase64, "UTF-8"); 
			 e.setImageDisplay(base64Encoded);
		}
		m.addAttribute("eventList", eventList);
		return "eventList";
	}

	// Delete events
	@RequestMapping(value = "/deleteEvent")
	public String deleteEvent(Model m, @RequestParam int id) {
		eventService.deleteEvent(id);
		m.addAttribute("admin", ObjectFactory.getInstance("admin"));
		return "redirect:/eventList";
	}

	// Edit events
	@RequestMapping(value = "/editEvent")
	public String editEvent(Model m, @RequestParam int id) {
		Event event = eventService.getEvent(id);
		m.addAttribute("admin", ObjectFactory.getInstance("admin"));
		m.addAttribute("event", event);
		return "editEvent";
	}

	//Update events 
	@RequestMapping(value = "/updateEvent")
	public String updateEvent(Model m, @ModelAttribute Event event) {
		eventService.updateEvent(event);
		m.addAttribute("admin", ObjectFactory.getInstance("admin"));
		return "redirect:/eventList";
	}

}
