<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JTSL fn 라이브러리</title>

</head>
<body>

	<c:set var="str1" value="No pain. No gain" />

	<h2>길이 구하기</h2>
	${fn:length(str1) } No가 존재하는가? ${fn:contains(str1,"No") }
	<br> no가 존재하는가? ${fn:contains(str1,"no") }
	<br>


	<h3>2.특정문자열이 존재하는지 확인</h3>
	<c:if test="${fn:containsIgnoreCase(str1, 'no') }">
문장에 no 라는 문자열이 존재합니다.(대소문자 구별안함)
</c:if>


	<h3>3.특정 문자열로 시작하는지 확인</h3>
	No로 시작하는가? ${fn:startsWith(str1,'No') }
	<br>

	<h3>4.특정 문자열로 끝나는지 확인</h3>
	No로 끝나는가? ${fn:endsWith(str1,'n') }
	<br> gain로 끝나는가? ${fn:endsWith(str1,'gain') }
	<br>


	<h3>5.문자열 치환</h3>
	<c:set var="str2" value="I love chiken." />
	${str2 }
	<br> ${fn:replace(str2,'chiken', 'bread') }

	<h3>6. 구문자로 잘라서 배열로 만들기 .split</h3>
	${fn:split(str1,'.')[0] }
	<br> ${fn:split(str1,'.')[1] }
	<br>


	<h3>7. 시작인덱스 부터 종료 인덱스까지 만들기 .substring</h3>
	<%-- str2에서 love 추출 --%>
	${fn:substring(str2,2,6) }
	
	
	<h3>8. 모두 소문자로 변경</h3>
	${fn:toLowerCase(str2) }<br>
	${fn:toLowerCase('I love Chiken.') }<br>
	
	
	<h3>9. 모두 대문자로 변경</h3>
	${fn:toUpperCase(str2) }<br>
	${fn:toUpperCase('I love Chiken.') }<br>
	
	<h3>10.앞뒤 공백 제거 : trim</h3>
	<c:set var="str3" value="           Hello~            "/>
	<pre>${str3}</pre>
	<pre>trim 함수 적용 : ${fn:trim(str3)}</pre>
</body>
</html>