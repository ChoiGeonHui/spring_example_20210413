<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 추가</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</head>
<body>

	<div class="container">
		<h1>회원정보 추가</h1>
		<form method="post" action="/lesson04/ex01/add_user">
		<label for="name"></label><b>이름 : </b><input type="text" name="name" class="formcontrol" placeholder="이름을 입력하세요."><br>
		<label for="yyyymmdd"></label><b>생년월일 : </b><input type="text" name="yyyymmdd" class="formcontrol" placeholder="생년월일을 입력하세요. 예)19920101"><br>
		<label for="email"></label><b>이메일 : </b><input type="text" name="email" class="formcontrol" placeholder="이메일을 입력하세요."><br>
		<label for="introduce"></label><b>이메일 : </b><br>
		<textarea name="introduce" rows="5" cols="50"></textarea>
		
		<p>
		<input type="submit" class="btn btn-info" value="추가"> 
		</p>
		</form>
	</div>



</body>
</html>