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
	
	
	@RequestMapping("/dashboard.do")
	public ModelAndView boardMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dashboard");
		return mav;
	}
	
	@RequestMapping("/project_member.do")
	public ModelAndView memberMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project_member");
		return mav;
	}
	
	@RequestMapping("/calendar.do")
	public ModelAndView calendarMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("calendar");
		return mav;
	}
	
	@RequestMapping("/project.do")
	public ModelAndView projectMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project");
		return mav;
	}
	
	
	
	

}// end class


