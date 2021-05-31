package project_jun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@GetMapping("/main")
	public String main() {
		return "main";
	}

	@RequestMapping("/include/menu")
	public String menu() {
		return "include/menu";
	}

	// 맵핑할때 view안에 있는 폴더이면 꼭! 위치 설정해주세요. 밑에처럼
	@RequestMapping("/board_servicecenter/servicecenter_write")
	public String write_ServiceCenter() {
		return "board_servicecenter/servicecenter_write";
	}

	@RequestMapping("/board_servicecenter/servicecenter_view")
	public String view_ServiceCenter() {
		return "board_servicecenter/servicecenter_view";
	}

	@RequestMapping("/login/login")
	public String login() {
		return "login/login";
	}
	
	
	
	
}
