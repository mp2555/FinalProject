package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.CardService;

@Controller
public class KanbanController {

	private CardService service;

	public void setService(CardService service) {
		this.service = service;
	}

	public KanbanController() {
		
		// TODO Auto-generated constructor stub

	}
	
	@RequestMapping("/kanban.do")
	public ModelAndView kanbanMethod(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("kanban");
		return mv;
	}
	
	@RequestMapping("/kanbanNewMake.do")
	public ModelAndView NewMakeMethod(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("kanbanNewMake");
		return mv;
	}
	
	@RequestMapping("/kanbanDetailView.do")
	public ModelAndView detailMethod(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("kanbanDetailView");
		return mv;
	}

}// end class
