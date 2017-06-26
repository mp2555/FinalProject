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
	
	
	@RequestMapping("/project_info.do")
	public ModelAndView projectMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project_info");
		return mav;
	}
	
	@RequestMapping("/wiki.do")
	public ModelAndView wikiMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("wiki");
		return mav;
	}
	
	@RequestMapping("/timeline.do")
	public ModelAndView timelineMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("timeline");
		return mav;
	}
	
}// end class


