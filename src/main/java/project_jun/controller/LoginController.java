package project_jun.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import project_jun.dto.LoginCommand;
import project_jun.exception.WrongIdPasswordException;
import project_jun.validator.LoginCommandValidator;



@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private AuthService authService;

	@GetMapping
	public String form(LoginCommand loginCommand, @CookieValue(value = "REMEMBER", required = false) Cookie rCookie) {
		if (rCookie != null) {
			loginCommand.setUserId(rCookie.getValue());
			loginCommand.setRememberUserId(true);
		}
		return "/login/loginForm";
	}

	@PostMapping
	public String submit(LoginCommand loginCommand, Errors errors, HttpSession session, HttpServletResponse response) {
		new LoginCommandValidator().validate(loginCommand, errors);
		if (errors.hasErrors())
			return "/login/loginForm";

		try {
			AuthInfo authInfo = authService.authenicate(loginCommand.getUserId(), loginCommand.getPassword());
			session.setAttribute("authInfo", authInfo);
			
			Cookie rememberCookie = new Cookie("REMEMBER", loginCommand.getUserId());
			rememberCookie.setPath("/");
			if(loginCommand.isRememberUserId()) {
				rememberCookie.setMaxAge(60 * 60 * 24 * 30);
			}else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);
			
			return "/login/loginSuccess";
		} catch (WrongIdPasswordException ex) {
			errors.reject("idPasswordNotMatching");
			return "/login/loginForm";
		}
	}
}
