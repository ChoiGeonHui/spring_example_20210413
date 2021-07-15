package com.example.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //jsp를 내려줄때는 @ResponseBody가 사용 되지 않는다.
public class Ex02Controller {
	
	//요청 url :http://localhost/lesson01/ex02/1
	@RequestMapping("/lesson01/ex02/1")
	public String ex02_1() {
		//ResponseBody가 아닌 상대로 String을 리턴하면
		//ViewResolver에 의해 리턴된 String이름이 view를 찾고 view화면에 구성된다.
		
		// 			/WEB_INF/jsp/<lesson01/ex02>.jsp
		return "lesson01/ex02"; //jsp의 뷰 이름 (prefix,suffix가 제외됨)
	}

}
