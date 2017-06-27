package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dto.MemberDTO;
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
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value="/join.do",method=RequestMethod.GET)
	public ModelAndView joinMethod(MemberDTO dto){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("join");
		return mav;
	}
	

	@RequestMapping(value="/join.do",method=RequestMethod.POST)
	public String joinnMethod(MemberDTO dto, HttpServletRequest request){
		System.out.println(dto.getName()+"/"+dto.getEmail()+"/"+dto.getPass());
		service.insertProcess(dto);
		return "redirect:/login.do";
	}
	
	
	
	@RequestMapping("/profile.do")
	public ModelAndView testMethod(
			){
		ModelAndView mav = new ModelAndView();
		//세션 아이디 값으로 받으면 된다.
		String email="wntnrud00@hanmail.net";
		//String email  = (String)session.getAttribute("login.email");
		
		//wntnrud00@hanmail.net
		//dks3344@naver.com
		MemberDTO dto = service.profileProcess(email);//현재 DB값에 잇는 데이터
	/*	System.out.println(dto.getName());
		System.out.println(dto.getEmail());
		System.out.println(dto.getIntroduce());
		System.out.println(dto);
		*/
		
		mav.addObject("dto",dto);
		mav.setViewName("profile");
		return mav;
	}


}// end class


