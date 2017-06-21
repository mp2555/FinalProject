package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	

}// end class


