package com.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	@RequestMapping("join")
	public String join() {
		return "join/join";
	}
	@RequestMapping("login")
	public String login() {
		return "join/login";
	}
	@RequestMapping("id_pw_find")
	public String IdPwFind(){
		return"join/id_pw_fid";
	}
	@RequestMapping("welcome")
	public String welcome(){
		return"join/welcome"; 
	}
}
