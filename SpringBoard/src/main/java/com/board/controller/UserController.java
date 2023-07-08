package com.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.service.BoardService;
import com.board.service.UserService;

@Controller
public class UserController {
	
//	@Autowired
//	private UserService userService;
//	
//	@Autowired
//	private BoardService boardService;
	
	//로그인 화면
	@GetMapping("/login")
	public ModelAndView index(RedirectAttributes redirect) {
		System.out.println("index() controller접속");
		ModelAndView mv = new ModelAndView("user/login");
		if(redirect.getAttribute("msg") != null) {
			mv.addObject("msg", redirect.getAttribute("msg"));
		}
		
		return mv;
	}
}
