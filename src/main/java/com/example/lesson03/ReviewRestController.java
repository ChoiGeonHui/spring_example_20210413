package com.example.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson03.bo.ReviewBO;
import com.example.lesson03.model.Review;

@RestController
public class ReviewRestController {
	
	@Autowired
	ReviewBO reviewBO;
	
	@RequestMapping("/lesson03/ex01")
	public Review ex01(
			//@RequestParam(value = "id")int id //필수 파라미터
			//@RequestParam(value = "id", required = true)int id //필수 파라미터
			//@RequestParam(value = "id",required = false) Integer id // 비필수 파라미터 (값이 없을수 있기 때문에 null을 저장하기위해 false로 설정)
			@RequestParam(value = "id",defaultValue = "1")int id
			) {	
		System.out.println("### id :"+ id);
		
		return reviewBO.getReview(id);
		
	}
	
	
	@RequestMapping("/lesson03/ex02")
	public String ex02() {
		Review review = new Review();
		review.setStoreName("보람 삼겹살");
		review.setMenu("삼겹혼합세트");
		review.setUserName("홍길동");
		review.setPoint(4.5);
		review.setReview("혼자 먹기 딱 적당하네요.");
		
		int row = reviewBO.insertReview(review); //insert 된 row수를 리턴받는다.
		
		return "success row count : " + row;
		//@responseBody로 인해 String 값 자체가 @responseBody 에 담긴다
		
		
	}
	
	@RequestMapping("/lesson03/ex02/2")
	public String ex02_2() {
		int row = reviewBO.insertReviewAsField("도미노피자","콤비네이션 R","신바다",5.0,"역시 맛있다");
		
		return "success row count : " + row;
	}
	
	
	
	
	
	

}
