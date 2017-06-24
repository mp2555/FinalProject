package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.MemberService;

@Controller
public class MemberController {

	private MemberService service;
	
	public void setService(MemberService service) {
		this.service = service;
	}
	
	public MemberController() {
		// TODO Auto-generated constructor stub
	}

	//http://localhost:8090/project/login.do
	
	@RequestMapping("/login.do")
	public ModelAndView loginMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("loginpage");
		return mav;
	}
	
	@RequestMapping("/join.do")
	public ModelAndView joinMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("joinpage");
		return mav;
	}
	
	@RequestMapping("/profile.do")
	public ModelAndView testMethod(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("profile");
		return mav;
	}
	

}// end class


