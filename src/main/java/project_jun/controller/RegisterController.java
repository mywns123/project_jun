package project_jun.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import project_jun.dto.RegisterRequest;
import project_jun.exception.DuplicateUserException;
import project_jun.service.UserRegisterService;

@Controller
public class RegisterController {

	@Autowired
	private UserRegisterService service;

	@RequestMapping("/login/signUp1")
	public String signUp1(RegisterRequest registerRequest) {
		return "login/signUp1";
	}

	@PostMapping("/login/signUp2")
	public String signUp2(@Valid @RequestParam(value = "agree", defaultValue = "false") Boolean agree,
			RegisterRequest request, Errors errors) {
		if (errors.hasErrors()) {
			return "login/signUp1";
		}
		if (!agree) {
			return "login/signUp1";
		}

		if (!request.isPasswordEqualToComfirmPassword()) {
			errors.rejectValue("confirmUserPw", "nomatch");
			return "login/signUp1";
		}		
		try {
			service.regist(request);
			return "login/signUp2";
		} catch (DuplicateUserException e) {
			errors.rejectValue("id", "duplicate");
			return "login/signUp1";
		}
	}

	@GetMapping("/login/signUp2")
	public String signUp2() {
		return "redirect:/login/signUp1";
	}

}
