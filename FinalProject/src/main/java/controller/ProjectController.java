package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.ProjectService;

@Controller
public class ProjectController {

	private ProjectService service;
	
	public void setService(ProjectService service) {
		this.service = service;
	}
	
	public ProjectController() {
		
	}
	
	@RequestMapping("/information.do")
	public ModelAndView testMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("information");
		return mav;
	}
	
	@RequestMapping("/dashboard.do")
	public ModelAndView boardMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dashboard");
		return mav;
	}
	
	@RequestMapping("/member.do")
	public ModelAndView memberMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member");
		return mav;
	}
	
	

}// end class


