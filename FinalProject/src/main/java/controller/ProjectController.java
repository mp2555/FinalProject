package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {

	
	@RequestMapping("")
	public String login() {
		return "";
	}

}// end class


