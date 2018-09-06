package com.junkikim.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.junkikim.vo.UserVO;

@Controller
public class UserController {
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginform() {
		return "user/loginform";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginresult(UserVO vo,Model model,HttpServletRequest request) {
		model.addAttribute("msg", "중복입니다."); 
		model.addAttribute("url", request.getContextPath()+"/login"); 
		System.out.println(vo.toString());
		return "redirect";
	}
}
