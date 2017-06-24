package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.CalendarService;

@Controller
public class CalendarController {

	private CalendarService service;

	public void setService(CalendarService service) {
		this.service = service;
	}

	public CalendarController() {
		
		// TODO Auto-generated constructor stub

	}

}// end class
