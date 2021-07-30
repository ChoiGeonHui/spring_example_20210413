<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보추가</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>      
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</head>
<body>

	<div class="container">
		<h1>회원 정보 추가</h1>
		<form id="addform" method="post" action="/lesson06/ex01/add_user">
			<b>이름 :</b> <input type="text" class="form-control col-3"
				id="name" name="name" placeholder="이름을 입력하세요"> <br> <b>생년월일 :</b> <input
				type="text" class="form-control col-3" id="yyyymmdd" name="yyyymmdd"
				placeholder="생년월일을 입력하세요"> <br> <b>이메일주소 :</b> <input type="text"
				class="form-control col-3" name="email" id="email" placeholder="이메일을 입력하세요"> <br> <b>자기소개 :</b>
			<textarea rows="10" cols="20" name="introduce" class="form-control"></textarea>
			<br>
			<button type="submit" id="addBtn" class="btn btn-success">추가</button>


		</form>
	</div>
<script type="text/javascript">
$(document).ready(function(){
		
	//(1) jquery의 submit 기능 이용하기
/* 	 $("#addform").on('submit',function(e){
		alert("추가버튼 클릭");
		
		//e.preventDefault();//기본으로 submit동작하는것을 막는다.
		
		
		let name = $('input[name=name]').val().trim();
		if(name==''){
			alert("이름을 입력해 주세요.");
			return;
		}
		
		let yyyymmdd = $('input[name=yyyymmdd]').val().trim();
		if(yyyymmdd==''){
			alert("생년월일을 입력해 주세요.");
			return;
		}
		
		//여기까지 도달하면 submit이 된다
	});  */
		//(2)jquery의 ajax 통신을 이용하기
	$('#addBtn').on('click', function(e) {
		e.preventDefault(); // submit 되는 것을 막는다.
		//alert("추가 버튼 클릭");
		
		// validation
		var name = $('#name').val().trim(); // 이름을 가져와서 공백 제거
		//alert(name);
		if (name == '') {
			alert("이름을 입력해주세요.");
			return;
		}
		
		var yyyymmdd = $('#yyyymmdd').val().trim();
		if (yyyymmdd == '') {
			alert("생년월일을 입력해주세요.");
			return;
		}
		
		if (isNaN(yyyymmdd)) { // 모두 숫자인지 확인
			alert("숫자만 입력해주세요.");
			return;
		}
		
		var introduce = $('textarea[name=introduce]').val(); // 이름 속성으로 가져오기
		//alert(introduce);
		
		var email = $('#email').val().trim();
		//alert(email);
		
		// AJAX: 폼태그와 상관없이 비동기로 별도 요청(request)  
		$.ajax({
			type: "POST",
			url: "/lesson06/ex01/add_user",
			data: {"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email},
			success: function(data) {
				alert(data);
				location.href = "/lesson06/ex01/get_user";
			},
	        complete : function(data) {
	        	alert("완료");
	        },
			error: function(e) {
				alert("error " + e);
			}
		});
	});
		
		
		
		
	
	
});


</script>

</body>
</html>