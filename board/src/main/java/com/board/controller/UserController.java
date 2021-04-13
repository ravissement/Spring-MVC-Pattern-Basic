package com.board.controller;

import java.io.Console;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.UserVO;
import com.board.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Inject UserService service;
	
	
	//회원가입 작성
	@RequestMapping(value ="/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {
		
	}
	
	
	//회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String getJoin(UserVO vo, Model model) throws Exception {
		
		service.join(vo);
		model.addAttribute("userName", vo.getUser_name());
		
		return "home";
	}
	
	
	//로그인 작성
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		
	}
	
	
	//로그인
	@RequestMapping(value = "/goLogin", method = RequestMethod.POST)
	public String getLogin(UserVO vo, HttpServletRequest req) throws Exception {
		
		HttpSession session = req.getSession();
		UserVO login = service.login(vo);
		String url = "";
		if(login == null) {
			session.setAttribute("member", null);
			url = "/user/login";
		} else {
			session.setAttribute("member", login);
			url = "home";
		}
		
		return url;
	}
		
	//로그아웃
	@RequestMapping(value ="/logout", method = RequestMethod.GET)
	public String getLoout(HttpServletRequest req) throws Exception {

		HttpSession session = req.getSession();
		session.removeAttribute("member");
		
		return "home";
	}
	
	
		
}
	
