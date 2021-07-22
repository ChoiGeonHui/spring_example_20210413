package com.example.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.lesson04.bo.NewStudentBO;
import com.example.lesson04.model.NewStudent;

@Controller
@RequestMapping("/lesson04/ex02")
public class NewStudentController {
	
	@Autowired
	NewStudentBO newStudentBO;
	
	@GetMapping("/1")
	public String addStudentView() {
		return "lesson04/addStudent";
	}
	
	@PostMapping("/add_student")
	public String addStudent(
			@ModelAttribute NewStudent newStudent,
			Model model) {
		//insert DB
		newStudentBO.addStudent(newStudent);
	
		//select DB
		newStudent= newStudentBO.getNewStudentId(newStudent.getId());
		model.addAttribute("result", newStudent);
		model.addAttribute("subject", "학생정보");
		
		
		return "lesson04/afterAddStudent";
	}
	

}
