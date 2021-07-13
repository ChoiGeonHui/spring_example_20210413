package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@RequestMapping("/lesson01/ex01")
//공통되는 url주소를 맵핑할수 있다. 메소드에 붙은 맵핑보다 먼저 적용

@Controller // controller spring bean (new로 만들지 않는 스프링빈) 
public class Ex01Controller {
	
	
	//요청 url : http://localhost:80/lesson01/ex01/1
	@RequestMapping("/1") // url로 맵핑 (공통 url+/1)
	@ResponseBody	//리턴되는 값을 html response body로 보낸다.
	public String printString() {
		String text = "예제1번<br> 문자열을 response body 로 보내는 예제";
		return text;
	}
	
	//요청 url : ``/lesson01/ex01/2
	@RequestMapping("/2")
	public @ResponseBody Map<String, Object> printMap(){
		Map<String, Object> map = new HashMap<>();
		map.put("apple", 4);
		map.put("banana", 10);
		map.put("orange", 125);
		map.put("grape", 67);
		
		//map을 리턴하면 json으로 나타낸다.
		//web starter에 jackson 이라는 라이브러리가 포함되어 있기 때문
		return map;
	}

}
