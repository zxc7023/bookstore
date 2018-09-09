package com.bookstore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bookstore.service.UserService;
import com.bookstore.vo.UserVO;

@Controller
@RequestMapping(value = "/user/*")
@SessionAttributes("loginInfo")
public class UserController {
	
	@Autowired
	UserService service;
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginform() {
		return "user/loginform";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginresult(UserVO user,Model model,HttpServletRequest request,HttpSession session) {
		System.out.println("요청 URI : " + request.getRequestURI() +" 요청 방식 : " + request.getMethod());
		String msg ="아이디와 비밀번호를 확인하세요.";
		String url = request.getContextPath()+"/user/login";
		try {
			UserVO resultUser = service.login(user);
			if(resultUser != null) {
				if(resultUser.getPassword().equals(user.getPassword()) && (resultUser.getType()==0)){
					model.addAttribute("loginInfo",user);
					session.setMaxInactiveInterval(60 * 60);
					return "redirect:/";
				}else if (resultUser.getType()==1){
					msg ="탈퇴한 회원 입니다.";
				}
			}
			
			model.addAttribute("msg",msg);
			model.addAttribute("url",url);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect";
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}
	
	@RequestMapping("/mymenu")
	public String myInfo() {
		return "user/mymenu";
	}
}
