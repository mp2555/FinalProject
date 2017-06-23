package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.CardService;

@Controller
public class CardController {

	private CardService service;

	public void setService(CardService service) {
		this.service = service;
	}

	public CardController() {
		System.out.println("d");
		// TODO Auto-generated constructor stub

//연습 은비바보
		//연습.은비
		
		//야호야호야호ㅇㅇㅇㅇㅇㅇ

	}

}// end class
