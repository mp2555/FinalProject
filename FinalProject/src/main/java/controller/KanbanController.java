package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.KanbanService;

@Controller
public class KanbanController {

	private KanbanService service;

	public void setService(KanbanService service) {
		this.service = service;
	}

	public KanbanController() {
		
		// TODO Auto-generated constructor stub

	}

}// end class
