package project_jun.controller;

import javax.servlet.http.Cookie;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import project_jun.dto.LoginCommand;

@Controller
public class LoginController {
	
	@RequestMapping("/login/login")
	public String login(LoginCommand loginCommand, @CookieValue(value = "REMEMBER", required = false) Cookie rCookie) {
		if (rCookie != null) {
			loginCommand.setUserId(rCookie.getValue());
			loginCommand.setRememberUserId(true);
		}
		return "login/login";
	}

}
