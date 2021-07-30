package com.example.lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.lesson04.bo.NewUserBO;
import com.example.lesson04.model.NewUser;

@RequestMapping("/lesson06/ex01")
@Controller
public class Lessson06Controller {
	
	@Autowired
	private NewUserBO newUserBO;
	
	@RequestMapping("/add_new_user_view")
	public String ex01() {
		
		return "lesson06/addnewuser";
	}
	
	@PostMapping("/add_user")
	@ResponseBody
	public String addNewUser(
			@RequestParam("name")String name,
			@RequestParam("yyyymmdd")String yyyymmdd,
			@RequestParam(value = "email" ,required = false)String email,
			@RequestParam(value = "introduce",required = false)String introduce
			) {
		//newUserBO.addNewUser(name, yyyymmdd, email, introduce);
		
		return "success";
	}
	
	@RequestMapping("/get_user")
	public String getUser(Model model) {
		NewUser newUser= newUserBO.getLastUser();
		model.addAttribute("newuser", newUser);
		return"lesson06/getNewUser";
	}
	
}
