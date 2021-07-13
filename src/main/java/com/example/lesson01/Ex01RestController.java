package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@ RequestMapping("/lesson01/ex01")
@RestController //@controller + @responsebady
// 데이터를 내릴 때 주로 사용한다.
public class Ex01RestController {
	
	// 요청 url :http://localhost/lesson01/ex01/3
	@RequestMapping("/3")
	public String printString() {
		return "@RestContrller를 사용하서 String을 리턴해본다";
	}
	
	
	@RequestMapping("/4")
	public Map<String, String> printmap(){
		Map<String, String> map = new HashMap<String, String>();
		map.put("aaa", "111");
		map.put("bbb", "222");
		map.put("ccc", "333");
		return map;
	}
	
	@RequestMapping("/5")
	public Data printData() {
		Data data = new Data();
		data.setId(1);
		data.setName("최건희");
		
		System.out.println(data);
		return data; //일반 bean객체도 json으로 내려간다. (jackson)라이브러리 때문
		
	}
	
	@RequestMapping("/6")
	public ResponseEntity<Data> entity() {
		Data data = new Data();//일반 javabean
		data.setId(2);
		data.setName("홍길동");
		
		//크롬 > network 탭 응답값 확인
		//return new ResponseEntity<>(data, HttpStatus.OK); //200 ok
		return new ResponseEntity<>(data, HttpStatus.INTERNAL_SERVER_ERROR); 
		
	}
	
	
}
