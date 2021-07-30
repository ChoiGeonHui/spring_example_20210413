package com.example.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.lesson04.bo.NewUserBO;
import com.example.lesson04.model.NewUser;

@Controller
@RequestMapping("/lesson04/ex01")
public class NewUserController {

	@Autowired
	NewUserBO newUserBO;
	
	@RequestMapping(path= "/1", method = RequestMethod.GET)
	public String addUserView() {
		return "lesson04/addUser";
	}
	
	@PostMapping("/add_user")
	public String addUser(
			@RequestParam("name")String name,
			@RequestParam("yyyymmdd")String yyyymmdd,
			@RequestParam(value = "email",required = false)String email,
			@RequestParam(value = "introduce",required = false)String introduce
			) {
		
		//db insert
		newUserBO.addNewUser(name, yyyymmdd, email, introduce);
		
		return "lesson04/afterAddUser";
	}
	
	/**
	 * 가장 최근에 추가된 사람 한면 가져오기
	 * @return
	 */
	
	@GetMapping("/get_last_user")
	public String getLastUserView(Model model) {//ModelAndView 객체는 요즘 사용하지 않는다.
		NewUser newUser = newUserBO.getLastUser();
		model.addAttribute("result", newUser);//결과 jsp view에 결과 객체값을 넘겨준다.
		model.addAttribute("subject", "회원 정보");
		return "/lesson04/getLastUser";
	}
}
